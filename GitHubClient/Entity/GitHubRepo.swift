//
//  GitHubRepo.swift
//  GitHubClient
//
//  Created by branch10480 on 2021/05/11.
//

import Foundation

struct GitHubRepo: Codable {
    let fullName: String
    let stargazersCount: Int
}