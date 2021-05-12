//
//  ReposListSpec.swift
//  GitHubClientTests
//
//  Created by branch10480 on 2021/05/12.
//

import Foundation
import Quick
import Nimble
import Cuckoo
@testable import GitHubClient

class ReposListSpec: QuickSpec {

    private var presenter: ReposListPresenterProtocol!
    private var router: MockReposListRouterProtocol!
    private var interactor: MockReposListInteractorProtocol!
    private var presenterOutput: MockReposListPresenterOutputProtocol!

    override func spec() {
        
        describe("ReposList") {
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
            }
            context("リスト表示") {
                it("画面表示時にリポジトリリスト取得を行い、成功の場合リスト表示を行う") {
                    // スタブの設定
                    stub(self.interactor, block: { proxy in
                        when(proxy.fetchRepos(language: any(), completion: anyClosure()))
                            .then { language, completion in
                                completion(.success([]))
                            }
                    })
                    stub(self.presenterOutput, block: { proxy in
                        when(proxy.reloadCollectionView()).thenDoNothing()
                    })

                    // テスト開始
                    self.presenter.viewDidAppear()

                    // 検証
                    verify(self.presenterOutput, times(1)).reloadCollectionView()
                    verify(self.interactor, times(1))
                        .fetchRepos(language: "swift", completion: anyClosure())
                }
            }
        }

    }
}
