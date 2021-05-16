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
    
    func inject(
        presenter: ReposListPresenterProtocol
    ) {
        self.presenter = presenter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        presenter.viewDidLoad()
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
    func updateCollectionViewData(
        with changeSet: StagedChangeset<[ReposListSectionModel]>,
        completion: @escaping () -> Void
    ) {
        DispatchQueue.main.async { [weak self] in
            self?.collectionView.reload(using: changeSet) { _ in
                completion()
            }
        }
    }
    
    func showProgressHUD() {
        progressHUD.show()
    }
    
    func dismissProgressHUD() {
        progressHUD.dismiss()
    }
}

// MARK: - UICollectionViewDataSource

extension ReposListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let section = presenter.dataSource[indexPath.section]
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
        return presenter.dataSource.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter.dataSource[section].elements.count
    }
}

// MARK: - UICollectionViewDelegate

extension ReposListViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        presenter.didTapRepoRow(indexPath: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        guard let section = presenter.dataSource.last else {
            return
        }
        if indexPath.row == section.elements.count - 1 {
            presenter.didScrollToBottom()
        }
    }
}
