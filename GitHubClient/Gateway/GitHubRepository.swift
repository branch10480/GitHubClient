//
//  GitHubRepository.swift
//  GitHubClient
//
//  Created by branch10480 on 2021/05/11.
//

import Foundation

protocol GitHubRepositoryProtocol {
    func fetchSwiftRepos(completion: @escaping (Result<[GitHubRepos], Error>) -> Void)
}

final class GitHubRepository: GitHubRepositoryProtocol {
    func fetchSwiftRepos(completion: @escaping (Result<[GitHubRepos], Error>) -> Void) {
    }
}
