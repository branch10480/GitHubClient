//
//  ReposListPresenter.swift
//
//  Created by branch10480 on 2021/5/11.
//  Copyright © 2021 branch10480. All rights reserved.
//

import Foundation
import DifferenceKit

protocol ReposListPresenterProtocol: AnyObject {
    var dataSource: [ReposListSectionModel] { get }
    func viewDidLoad()
    func didTapRepoRow(indexPath: IndexPath)
    func didScrollToBottom()
}

protocol ReposListPresenterOutputProtocol: AnyObject {
    func updateCollectionViewData(
        with: StagedChangeset<[ReposListSectionModel]>,
        completion: @escaping () -> Void
    )
    func showProgressHUD()
    func dismissProgressHUD()
}

final class ReposListPresenter: ReposListPresenterProtocol {
    
    private(set) var dataSource: [ReposListSectionModel] = []
    
    private weak var view: ReposListPresenterOutputProtocol?
    private let router: ReposListRouterProtocol
    private let interactor: ReposListInteractorProtocol
    private var page: Int = 1
    private let perPage: Int = 10
    private let language = "swift"
    
    init(
        view: ReposListPresenterOutputProtocol,
        router: ReposListRouterProtocol,
        interactor: ReposListInteractorProtocol
    ) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }

    func viewDidLoad() {
        fetchRepos()
    }
    
    func didTapRepoRow(indexPath: IndexPath) {
        let viewData = dataSource[indexPath.section].elements[indexPath.row]
        router.showRepositoryDetailView(url: viewData.original.htmlUrl)
    }
    
    func didScrollToBottom() {
        page += 1
        fetchRepos()
    }
    
    private func fetchRepos() {
        view?.showProgressHUD()
        interactor.fetchRepos(language: language, perPage: perPage, page: page) {
            [weak self] result in
            
            guard let self = self else { return }
            self.view?.dismissProgressHUD()
            switch result {
            case .success(let data):
                let source = self.dataSource
                let targetItems = data.map { GitHubRepoViewData($0) }
                let target = [ReposListSectionModel(model: .repo, elements: targetItems)]
                let changeSet = StagedChangeset(source: source, target: target)
                self.view?.updateCollectionViewData(with: changeSet, completion: { [weak self] in
                    self?.dataSource = target
                })
            case .failure(let e):
                print(e.localizedDescription)
            }
        }
    }

}

// MARK: - DifferenceKit Definitions

typealias ReposListSectionModel = ArraySection<SectionId, GitHubRepoViewData>

enum SectionId: Differentiable {
    case repo
}

struct GitHubRepoViewData: Differentiable {
    let fullName: String
    let stargazersCount: Int
    let original: GitHubRepo
    
    init(_ repo: GitHubRepo) {
        fullName = repo.fullName
        stargazersCount = repo.stargazersCount
        original = repo
    }
    
    var differenceIdentifier: String {
        fullName
    }
    
    func isContentEqual(to source: GitHubRepoViewData) -> Bool {
        return fullName == source.fullName &&
            stargazersCount == source.stargazersCount
    }
}
