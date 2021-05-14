//
//  WebViewView.swift
//
//  Created by branch10480 on 2021/5/14.
//  Copyright © 2021 branch10480. All rights reserved.
//

import UIKit
import SafariServices

protocol WebViewRouterProtocol: AnyObject {
}

final class WebViewRouter: WebViewRouterProtocol {

    static func assembleModules(with url: URL) -> UIViewController {
        let vc = SFSafariViewController(url: url)
        return vc
    }
}
