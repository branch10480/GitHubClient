//
//  GitHubRepository.swift
//  GitHubClient
//
//  Created by branch10480 on 2021/05/11.
//

import Foundation
import Alamofire

enum GitHubClientError: Error {
    case failedGettingData
    case parseError
}

protocol GitHubRepositoryProtocol {
    func fetchRepos(language: String, completion: @escaping (Result<[GitHubRepo], Error>) -> Void)
}

final class GitHubRepository: GitHubRepositoryProtocol {

    private let endPoint = "https://api.github.com"

    func fetchRepos(language: String, completion: @escaping (Result<[GitHubRepo], Error>) -> Void) {

        let q = "language:\(language)"
        var urlString = endPoint + "/search/repositories"
        urlString += "?q=\(q)"
        let url = URL(string: urlString)!
        AF.request(url, method: .get).responseJSON { response in
            guard let data = response.data else {
                completion(.failure(GitHubClientError.failedGettingData))
                return
            }
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            do {
                let items = try decoder.decode(GitHubReposResponse.self, from: data).items
                completion(.success(items))
            } catch(let e) {
                completion(.failure(e))
            }
        }
    }
}
