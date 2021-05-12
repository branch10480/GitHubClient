//
//  ReposListView.swift
//
//  Created by branch10480 on 2021/5/11.
//  Copyright © 2021 branch10480. All rights reserved.
//

import UIKit

final class ReposListViewController: UIViewController {
    
    private var presenter: ReposListPresenterProtocol!
    
    func inject(
        presenter: ReposListPresenterProtocol
    ) {
        self.presenter = presenter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
    }
}

extension ReposListViewController: ReposListPresenterOutputProtocol {
    func reloadCollectionView() {
    }
}
