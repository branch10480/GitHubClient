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
                    let response =
                        try! self.jsonDecoder.decode(GitHubReposResponse.self, from: data)
                    expect(response.items[0].id).to(equal(21700699))
                    expect(response.items[0].fullName).to(equal("vsouza/awesome-ios"))
                    expect(response.items[0].stargazersCount).to(equal(37456))
                    expect(response.items[0].htmlUrl)
                        .to(equal("https://github.com/vsouza/awesome-ios"))
                }
            }
        }
        
        describe("GitHubRepoResponse") {
            context("正常系") {
                it("hasNextPage") {
                    let response = GitHubReposResponse(totalCount: 50, items: [])
                    expect(response.hasNextPage(currentPage: 1, perPage: 10)).to(beTrue())
                    expect(response.hasNextPage(currentPage: 2, perPage: 10)).to(beTrue())
                    expect(response.hasNextPage(currentPage: 3, perPage: 10)).to(beTrue())
                    expect(response.hasNextPage(currentPage: 4, perPage: 10)).to(beTrue())
                    expect(response.hasNextPage(currentPage: 5, perPage: 10)).to(beFalse())
                    
                    let response2 = GitHubReposResponse(totalCount: 49, items: [])
                    expect(response2.hasNextPage(currentPage: 1, perPage: 10)).to(beTrue())
                    expect(response2.hasNextPage(currentPage: 2, perPage: 10)).to(beTrue())
                    expect(response2.hasNextPage(currentPage: 3, perPage: 10)).to(beTrue())
                    expect(response2.hasNextPage(currentPage: 4, perPage: 10)).to(beTrue())
                    expect(response2.hasNextPage(currentPage: 5, perPage: 10)).to(beFalse())
                    
                    let response3 = GitHubReposResponse(totalCount: 51, items: [])
                    expect(response3.hasNextPage(currentPage: 1, perPage: 10)).to(beTrue())
                    expect(response3.hasNextPage(currentPage: 2, perPage: 10)).to(beTrue())
                    expect(response3.hasNextPage(currentPage: 3, perPage: 10)).to(beTrue())
                    expect(response3.hasNextPage(currentPage: 4, perPage: 10)).to(beTrue())
                    expect(response3.hasNextPage(currentPage: 5, perPage: 10)).to(beTrue())
                    expect(response3.hasNextPage(currentPage: 6, perPage: 10)).to(beFalse())
                }
            }
            context("異常系") {
                it("hasNextPage") {
                    let response = GitHubReposResponse(totalCount: 50, items: [])
                    expect(response.hasNextPage(currentPage: -1, perPage: 10)).to(beFalse())
                    expect(response.hasNextPage(currentPage: 1, perPage: -10)).to(beFalse())
                    expect(response.hasNextPage(currentPage: -1, perPage: -10)).to(beFalse())
                    expect(response.hasNextPage(currentPage: 7, perPage: 10)).to(beFalse())
                }
            }
        }
    }
}
