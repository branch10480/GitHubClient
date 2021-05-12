//
//  Application.swift
//  GitHubClient
//
//  Created by branch10480 on 2021/05/11.
//

import UIKit

class Application {
    static let shared = Application()
    private var window: UIWindow!
    
    private init() {}
    
    func setupRootView() {
        let window = UIWindow()
        let vc = ReposListRouter.assembleModules()
        let nc = UINavigationController(rootViewController: vc)
        window.rootViewController = nc
        window.makeKeyAndVisible()
        self.window = window
    }
}
