//
//  GitHubRepository.swift
//  GitHubClient
//
//  Created by branch10480 on 2021/05/11.
//

import Foundation
import Alamofire

enum GitHubClientError: Error {
    case failedToGetData
    case parseError
}
extension GitHubClientError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .failedToGetData:
            return "GitHubClientError.failedToGetData".localized
        case .parseError:
            return "GitHubClientError.parseError".localized
        }
    }
}

protocol GitHubRepositoryProtocol {
    func fetchRepos(
        language: String,
        perPage: Int,
        page: Int,
        completion: @escaping (Result<GitHubReposResponse, Error>) -> Void
    )
}

final class GitHubRepository: GitHubRepositoryProtocol {

    private let endPoint = "https://api.github.com"

    func fetchRepos(
        language: String,
        perPage: Int,
        page: Int,
        completion: @escaping (Result<GitHubReposResponse, Error>) -> Void
    ) {
        let q = "language:\(language)"
        var urlString = endPoint + "/search/repositories"
        urlString += "?q=\(q)&sort=stars&order=desc&page=\(page)&per_page=\(perPage)"
        let url = URL(string: urlString)!
        print(url)
        AF.request(url, method: .get).responseJSON { response in
            guard let data = response.data else {
                completion(.failure(GitHubClientError.failedToGetData))
                return
            }
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            do {
                let gitHubResponse = try decoder.decode(GitHubReposResponse.self, from: data)
                completion(.success(gitHubResponse))
            } catch {
                completion(.failure(GitHubClientError.parseError))
            }
        }
    }
}
