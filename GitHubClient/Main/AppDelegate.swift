//
//  AppDelegate.swift
//  GitHubClient
//
//  Created by branch10480 on 2021/05/10.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        Application.shared.setupRootView()
        
        return true
    }

}

