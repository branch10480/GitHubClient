//
//  __PREFIX__Presenter.swift
//
//  Created by __USERNAME__ on __DATE__.
//  Copyright © __YEAR__ __USERNAME__. All rights reserved.
//

import Foundation

protocol __PREFIX__PresenterProtocol: AnyObject {
}

protocol __PREFIX__PresenterOutputProtocol: AnyObject {
}

final class __PREFIX__Presenter: __PREFIX__PresenterProtocol {

    private weak var view: __PREFIX__PresenterOutputProtocol?
    private let router: __PREFIX__RouterProtocol
    private let interactor: __PREFIX__InteractorProtocol
    
    init(
        view: __PREFIX__PresenterOutputProtocol,
        router: __PREFIX__RouterProtocol,
        interactor: __PREFIX__InteractorProtocol
    ) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
}
