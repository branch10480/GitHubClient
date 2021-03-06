//
//  ReposListUseCase.swift
//
//  Created by branch10480 on 2021/5/11.
//  Copyright © 2021 branch10480. All rights reserved.
//

import Foundation

protocol ReposListInteractorProtocol {
    func fetchRepos(
        language: String,
        perPage: Int,
        page: Int,
        completion: @escaping (Result<GitHubReposResponse, Error>) -> Void
    )
}

final class ReposListInteractor: ReposListInteractorProtocol {

    private var repository: GitHubRepositoryProtocol = GitHubRepository()

    func inject(repository: GitHubRepositoryProtocol) {
        self.repository = repository
    }

    func fetchRepos(
        language: String,
        perPage: Int,
        page: Int,
        completion: @escaping (Result<GitHubReposResponse, Error>) -> Void
    ) {
        repository.fetchRepos(language: language, perPage: perPage, page: page) { result in
            switch result {
            case .success(let data):
                completion(.success(data))
            case .failure(let e):
                completion(.failure(e))
            }
        }
    }

}
