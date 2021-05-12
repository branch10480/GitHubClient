//
//  ReposListPresenter.swift
//
//  Created by branch10480 on 2021/5/11.
//  Copyright © 2021 branch10480. All rights reserved.
//

import Foundation

protocol ReposListPresenterProtocol: AnyObject {
    func viewDidAppear()
}

protocol ReposListPresenterOutputProtocol: AnyObject {
    func updateCollectionViewData(with: [GitHubRepo])
}

final class ReposListPresenter: ReposListPresenterProtocol {

    private weak var view: ReposListPresenterOutputProtocol?
    private let router: ReposListRouterProtocol
    private let interactor: ReposListInteractorProtocol
    
    init(
        view: ReposListPresenterOutputProtocol,
        router: ReposListRouterProtocol,
        interactor: ReposListInteractorProtocol
    ) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }

    func viewDidAppear() {
        interactor.fetchRepos(language: "swift") { [weak self] result in
            switch result {
            case .success(let data):
                self?.view?.updateCollectionViewData(with: data)
            case .failure(let e):
                print(e.localizedDescription)
            }
        }
    }

}
