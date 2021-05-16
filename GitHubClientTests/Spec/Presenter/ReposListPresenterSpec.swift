//
//  ReposListPresenterSpec.swift
//  GitHubClientTests
//
//  Created by branch10480 on 2021/05/12.
//

import Foundation
import Quick
import Nimble
import Cuckoo
@testable import GitHubClient

class ReposListPresenterSpec: QuickSpec {

    private var presenter: ReposListPresenterProtocol!
    private var router: MockReposListRouterProtocol!
    private var interactor: MockReposListInteractorProtocol!
    private var presenterOutput: MockReposListPresenterOutputProtocol!

    override func spec() {
        
        describe("ReposListPresenter") {
            beforeEach {
                let presenterOutput = MockReposListPresenterOutputProtocol()
                let router = MockReposListRouterProtocol()
                let interactor = MockReposListInteractorProtocol()
                let presenter = ReposListPresenter(
                    view: presenterOutput,
                    router: router,
                    interactor: interactor
                )
                self.presenter = presenter
                self.router = router
                self.interactor = interactor
                self.presenterOutput = presenterOutput

                stub(self.presenterOutput, block: { proxy in
                    when(proxy.showProgressHUD()).thenDoNothing()
                    when(proxy.dismissProgressHUD()).thenDoNothing()
                })
            }

            context("正常系") {
                it("画面表示時にリポジトリリスト取得を行い、成功の場合リスト表示を行う") {
                    // スタブの設定
                    stub(self.interactor, block: { proxy in
                        when(
                            proxy.fetchRepos(
                                language: any(),
                                perPage: any(),
                                page: any(),
                                completion: anyClosure()
                            )
                        )
                        .then { _, _, _, completion in
                            let items = [GitHubRepo(id: 1, fullName: "hoge", stargazersCount: 1, htmlUrl: "https://dummy.com")]
                            let response = GitHubReposResponse(totalCount: 1, items: items)
                            completion(.success(response))
                        }
                    })
                    stub(self.presenterOutput, block: { proxy in
                        when(proxy.updateCollectionViewData(
                                with: any(),
                                completion: anyClosure())
                        )
                        .thenDoNothing()
                    })

                    // テスト開始
                    self.presenter.viewDidLoad()

                    // 検証
                    verify(self.presenterOutput, times(1))
                        .updateCollectionViewData(with: any(), completion: anyClosure())
                    verify(self.interactor, times(1)).fetchRepos(
                        language: "swift",
                        perPage: any(),
                        page: any(),
                        completion: anyClosure()
                    )
                    verify(self.presenterOutput, times(1)).showProgressHUD()
                    verify(self.presenterOutput, times(1)).dismissProgressHUD()
                }
            }

            context("正常系") {
                it("リポジトリセルをタップするとリポジトリ詳細画面に遷移する") {
                    let items = [GitHubRepo(id: 1, fullName: "hoge", stargazersCount: 1, htmlUrl: "https://dummy.com")]
                    let response = GitHubReposResponse(totalCount: 1, items: items)
                    // スタブの設定
                    stub(self.router) { proxy in
                        when(proxy.showRepositoryDetailView(url: any())).thenDoNothing()
                    }
                    stub(self.interactor) { proxy in
                        when(proxy.fetchRepos(
                                language: any(),
                                perPage: any(),
                                page: any(),
                                completion: anyClosure())
                        ).then { _, _, _, completion in
                            completion(.success(response))
                        }
                    }
                    stub(self.presenterOutput, block: { proxy in
                        when(proxy.updateCollectionViewData(
                                with: any(),
                                completion: anyClosure())
                        )
                        .then { _, completion in
                            completion()
                        }
                    })

                    // テスト開始
                    self.presenter.viewDidLoad()
                    sleep(1)
                    self.presenter.didTapRepoRow(indexPath: .init(row: 0, section: 0))

                    // 検証
                    verify(self.router, times(1))
                        .showRepositoryDetailView(url: "https://dummy.com")
                }
            }

            context("正常系") {
                it("一番下までスクロールすると次のデータを取得し、表示を更新する") {
                    // スタブの設定
                    stub(self.interactor, block: { proxy in
                        when(proxy.fetchRepos(
                                language: any(),
                                perPage: any(),
                                page: any(),
                                completion: anyClosure())
                        )
                        .then { _, _, _, completion in
                            let response = GitHubReposResponse(totalCount: 100, items: [])
                            completion(.success(response))
                        }
                    })
                    stub(self.presenterOutput, block: { proxy in
                        when(proxy.updateCollectionViewData(
                                with: any(),
                                completion: anyClosure())
                        )
                        .thenDoNothing()
                    })
                    
                    // テスト開始
                    self.presenter.viewDidLoad()
                    verify(self.interactor, times(1)).fetchRepos(
                        language: "swift",
                        perPage: any(),
                        page: 1,
                        completion: anyClosure()
                    )
                    verify(self.presenterOutput, times(1))
                        .updateCollectionViewData(with: any(), completion: anyClosure())
                    
                    sleep(1)
                    
                    self.presenter.didScrollToBottom()
                    verify(self.interactor, times(1)).fetchRepos(
                        language: "swift",
                        perPage: any(),
                        page: 2,
                        completion: anyClosure()
                    )
                    verify(self.presenterOutput, times(2))
                        .updateCollectionViewData(with: any(), completion: anyClosure())
                }
            }
        }
    }
}
