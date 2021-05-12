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
        // TODO: Debug.
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            let data = [
                GitHubRepo(fullName: "Hoge/Fuga", stargazersCount: 2),
                GitHubRepo(fullName: "Hoge/Fuga2", stargazersCount: 1),
                GitHubRepo(fullName: "Hoge/Fuga3", stargazersCount: 0),
            ]
            completion(.success(data))
        }
    }
}
