//
//  UIViewControllerExtensions.swift
//  GitHubClient
//
//  Created by branch10480 on 2021/05/14.
//

import UIKit
import ProgressHUD

extension UIViewController {
    
    enum progressHUD {
        static func show() {
            DispatchQueue.main.async {
                ProgressHUD.animationType = .circleRotateChase
                ProgressHUD.show()
            }
        }
        static func dismiss() {
            DispatchQueue.main.async {
                ProgressHUD.dismiss()
            }
        }
    }
}
