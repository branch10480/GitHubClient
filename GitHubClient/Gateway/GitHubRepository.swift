//
//  GitHubRepository.swift
//  GitHubClient
//
//  Created by branch10480 on 2021/05/11.
//

import Foundation

protocol GitHubRepositoryProtocol {
    func fetchRepos(language: String, completion: @escaping (Result<[GitHubRepo], Error>) -> Void)
}

final class GitHubRepository: GitHubRepositoryProtocol {
    func fetchRepos(language: String, completion: @escaping (Result<[GitHubRepo], Error>) -> Void) {
    }
}
