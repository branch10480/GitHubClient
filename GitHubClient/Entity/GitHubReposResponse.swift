//
//  GitHubReposResponse.swift
//  GitHubClient
//
//  Created by branch10480 on 2021/05/13.
//

import Foundation

struct GitHubReposResponse: Codable {
    let totalCount: Int
    let items: [GitHubRepo]
}

extension GitHubReposResponse {
    func hasNextPage(currentPage: Int, perPage: Int) -> Bool {
        guard currentPage > 0, perPage > 0 else {
            return false
        }
        return totalCount - currentPage * perPage > 0
    }
}
