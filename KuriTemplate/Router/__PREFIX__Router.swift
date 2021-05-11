//
//  __PREFIX__View.swift
//
//  Created by __USERNAME__ on __DATE__.
//  Copyright © __YEAR__ __USERNAME__. All rights reserved.
//

import UIKit

protocol __PREFIX__RouterProtocol: AnyObject {
}

final class __PREFIX__Router: __PREFIX__RouterProtocol {
    
    private weak var vc: __PREFIX__ViewController!
    
    init(_ vc: __PREFIX__ViewController) {
        self.vc = vc
    }
    
    static func assembleModules() -> __PREFIX__ViewController {
        let vc = __PREFIX__ViewController()
        let router = __PREFIX__Router(vc)
        let interactor = __PREFIX__Interactor()
        let presenter = __PREFIX__Presenter(
            view: vc,
            router: router,
            interactor: interactor
        )
        vc.inject(presenter: presenter)
        return vc
    }
}
