//
//  StringExtensions.swift
//  GitHubClient
//
//  Created by branch10480 on 2021/05/12.
//

import Foundation

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}
