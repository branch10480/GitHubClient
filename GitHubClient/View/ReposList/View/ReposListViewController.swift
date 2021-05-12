//
//  ReposListView.swift
//
//  Created by branch10480 on 2021/5/11.
//  Copyright © 2021 branch10480. All rights reserved.
//

import UIKit
import DifferenceKit

final class ReposListViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private var presenter: ReposListPresenterProtocol!
    private enum CellName {
        static let list = "repoListCell"
    }
    private var dataSource: [ReposListSectionModel] = []
    
    func inject(
        presenter: ReposListPresenterProtocol
    ) {
        self.presenter = presenter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presenter.viewDidAppear()
    }
    
    private func setup() {
        title = "ReposListView.title".localized
        
        // Register cells.
        collectionView.register(
            .init(nibName: "RepoListCell", bundle: nil),
            forCellWithReuseIdentifier: CellName.list)
        // CollectionView Layout
        collectionView.collectionViewLayout = createLayout()
        // DataSource and Delegate
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    private func createLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout {
            [weak self] (sectionIndex, layoutEnvironment) -> NSCollectionLayoutSection? in
            return self?.createListLayoutSection()
        }
        return layout
    }
    
    private func createListLayoutSection() -> NSCollectionLayoutSection {

        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0),
            heightDimension: .estimated(48)
        )
        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0),
            heightDimension: .estimated(48)
        )
        let group = NSCollectionLayoutGroup.horizontal(
            layoutSize: groupSize,
            subitem: item,
            count: 1)

        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = .init(
            top: 16,
            leading: 16,
            bottom: 0,
            trailing: 0
        )
        section.interGroupSpacing = 0
        return section
    }
}

extension ReposListViewController: ReposListPresenterOutputProtocol {
    func updateCollectionViewData(with viewData: [GitHubRepoViewData]) {
        let source = dataSource
        let target = [ReposListSectionModel(model: .repo, elements: viewData)]
        let changeSet = StagedChangeset(source: source, target: target)
        DispatchQueue.main.async { [weak self] in
            self?.collectionView.reload(using: changeSet) { [weak self] data in
                self?.dataSource = data
            }
        }
    }
}

// MARK: - UICollectionViewDataSource

extension ReposListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let section = dataSource[indexPath.section]
        let sectionId = section.model
        let item = section.elements[indexPath.row]
        switch sectionId {
        case .repo:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellName.list, for: indexPath) as! RepoListCell
            cell.configure(item)
            return cell
        }
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return dataSource.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource[section].elements.count
    }
}

// MARK: - UICollectionViewDataSource

extension ReposListViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
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
    
    init(_ repo: GitHubRepo) {
        fullName = repo.fullName
        stargazersCount = repo.stargazersCount
    }
    
    var differenceIdentifier: String {
        fullName
    }
    
    func isContentEqual(to source: GitHubRepoViewData) -> Bool {
        return fullName == source.fullName &&
            stargazersCount == source.stargazersCount
    }
}
