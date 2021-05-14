//
//  EntitySpec.swift
//  GitHubClientTests
//
//  Created by branch10480 on 2021/05/14.
//

import Foundation
import Quick
import Nimble
import Cuckoo
@testable import GitHubClient

extension XCTestCase {
    var testBundle: Bundle {
        Bundle(for: type(of: self) as AnyClass)
    }
}

final class EntitySpec: QuickSpec {
    
    let jsonDecoder = JSONDecoder()

    override func spec() {
        beforeSuite {
            self.jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
        }

        describe("GitHubRepoResponse&GitHubRepo") {
            context("正常系") {
                it("Parse") {
                    let data = try! Data(
                        contentsOf: self.testBundle.url(
                            forResource: "get_githubrepos",
                            withExtension: "json")!
                    )
                    let response = try! self.jsonDecoder.decode(GitHubReposResponse.self, from: data)
                    expect(response.items[0].id).to(equal(21700699))
                    expect(response.items[0].fullName).to(equal("vsouza/awesome-ios"))
                    expect(response.items[0].stargazersCount).to(equal(37436))
                    expect(response.items[0].htmlUrl).to(equal("https://github.com/vsouza/awesome-ios"))
                }
            }
        }
    }
}
