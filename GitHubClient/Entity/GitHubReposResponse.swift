//
//  GitHubReposResponse.swift
//  GitHubClient
//
//  Created by branch10480 on 2021/05/13.
//

import Foundation

struct GitHubReposResponse: Codable {
    let items: [GitHubRepo]
}
