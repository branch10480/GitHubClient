//
//  ReposListView.swift
//
//  Created by branch10480 on 2021/5/11.
//  Copyright © 2021 branch10480. All rights reserved.
//

import UIKit

protocol ReposListRouterProtocol: AnyObject {
}

final class ReposListRouter: ReposListRouterProtocol {
    
    private weak var vc: ReposListViewController!
    
    init(_ vc: ReposListViewController) {
        self.vc = vc
    }
    
    static func assembleModules() -> ReposListViewController {
        let vc = ReposListViewController()
        let router = ReposListRouter(vc)
        let interactor = ReposListInteractor()
        let presenter = ReposListPresenter(
            view: vc,
            router: router,
            interactor: interactor
        )
        vc.inject(presenter: presenter)
        return vc
    }
}
