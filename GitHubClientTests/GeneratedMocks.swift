// MARK: - Mocks generated from file: GitHubClient/Gateway/GitHubRepository.swift at 2021-05-16 12:55:58 +0000

//
//  GitHubRepository.swift
//  GitHubClient
//
//  Created by branch10480 on 2021/05/11.
//

import Cuckoo
@testable import GitHubClient

import Alamofire
import Foundation


 class MockGitHubRepositoryProtocol: GitHubRepositoryProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = GitHubRepositoryProtocol
    
     typealias Stubbing = __StubbingProxy_GitHubRepositoryProtocol
     typealias Verification = __VerificationProxy_GitHubRepositoryProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: GitHubRepositoryProtocol?

     func enableDefaultImplementation(_ stub: GitHubRepositoryProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func fetchRepos(language: String, perPage: Int, page: Int, completion: @escaping (Result<GitHubReposResponse, Error>) -> Void)  {
        
    return cuckoo_manager.call("fetchRepos(language: String, perPage: Int, page: Int, completion: @escaping (Result<GitHubReposResponse, Error>) -> Void)",
            parameters: (language, perPage, page, completion),
            escapingParameters: (language, perPage, page, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetchRepos(language: language, perPage: perPage, page: page, completion: completion))
        
    }
    

	 struct __StubbingProxy_GitHubRepositoryProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func fetchRepos<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable, M4: Cuckoo.Matchable>(language: M1, perPage: M2, page: M3, completion: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String, Int, Int, (Result<GitHubReposResponse, Error>) -> Void)> where M1.MatchedType == String, M2.MatchedType == Int, M3.MatchedType == Int, M4.MatchedType == (Result<GitHubReposResponse, Error>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, Int, Int, (Result<GitHubReposResponse, Error>) -> Void)>] = [wrap(matchable: language) { $0.0 }, wrap(matchable: perPage) { $0.1 }, wrap(matchable: page) { $0.2 }, wrap(matchable: completion) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGitHubRepositoryProtocol.self, method: "fetchRepos(language: String, perPage: Int, page: Int, completion: @escaping (Result<GitHubReposResponse, Error>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GitHubRepositoryProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func fetchRepos<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable, M4: Cuckoo.Matchable>(language: M1, perPage: M2, page: M3, completion: M4) -> Cuckoo.__DoNotUse<(String, Int, Int, (Result<GitHubReposResponse, Error>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == Int, M3.MatchedType == Int, M4.MatchedType == (Result<GitHubReposResponse, Error>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, Int, Int, (Result<GitHubReposResponse, Error>) -> Void)>] = [wrap(matchable: language) { $0.0 }, wrap(matchable: perPage) { $0.1 }, wrap(matchable: page) { $0.2 }, wrap(matchable: completion) { $0.3 }]
	        return cuckoo_manager.verify("fetchRepos(language: String, perPage: Int, page: Int, completion: @escaping (Result<GitHubReposResponse, Error>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GitHubRepositoryProtocolStub: GitHubRepositoryProtocol {
    

    

    
     func fetchRepos(language: String, perPage: Int, page: Int, completion: @escaping (Result<GitHubReposResponse, Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: GitHubClient/View/ReposList/Interactor/ReposListInteractor.swift at 2021-05-16 12:55:58 +0000

//
//  ReposListUseCase.swift
//
//  Created by branch10480 on 2021/5/11.
//  Copyright © 2021 branch10480. All rights reserved.
//

import Cuckoo
@testable import GitHubClient

import Foundation


 class MockReposListInteractorProtocol: ReposListInteractorProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ReposListInteractorProtocol
    
     typealias Stubbing = __StubbingProxy_ReposListInteractorProtocol
     typealias Verification = __VerificationProxy_ReposListInteractorProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ReposListInteractorProtocol?

     func enableDefaultImplementation(_ stub: ReposListInteractorProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func fetchRepos(language: String, perPage: Int, page: Int, completion: @escaping (Result<GitHubReposResponse, Error>) -> Void)  {
        
    return cuckoo_manager.call("fetchRepos(language: String, perPage: Int, page: Int, completion: @escaping (Result<GitHubReposResponse, Error>) -> Void)",
            parameters: (language, perPage, page, completion),
            escapingParameters: (language, perPage, page, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetchRepos(language: language, perPage: perPage, page: page, completion: completion))
        
    }
    

	 struct __StubbingProxy_ReposListInteractorProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func fetchRepos<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable, M4: Cuckoo.Matchable>(language: M1, perPage: M2, page: M3, completion: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String, Int, Int, (Result<GitHubReposResponse, Error>) -> Void)> where M1.MatchedType == String, M2.MatchedType == Int, M3.MatchedType == Int, M4.MatchedType == (Result<GitHubReposResponse, Error>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, Int, Int, (Result<GitHubReposResponse, Error>) -> Void)>] = [wrap(matchable: language) { $0.0 }, wrap(matchable: perPage) { $0.1 }, wrap(matchable: page) { $0.2 }, wrap(matchable: completion) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockReposListInteractorProtocol.self, method: "fetchRepos(language: String, perPage: Int, page: Int, completion: @escaping (Result<GitHubReposResponse, Error>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ReposListInteractorProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func fetchRepos<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable, M4: Cuckoo.Matchable>(language: M1, perPage: M2, page: M3, completion: M4) -> Cuckoo.__DoNotUse<(String, Int, Int, (Result<GitHubReposResponse, Error>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == Int, M3.MatchedType == Int, M4.MatchedType == (Result<GitHubReposResponse, Error>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, Int, Int, (Result<GitHubReposResponse, Error>) -> Void)>] = [wrap(matchable: language) { $0.0 }, wrap(matchable: perPage) { $0.1 }, wrap(matchable: page) { $0.2 }, wrap(matchable: completion) { $0.3 }]
	        return cuckoo_manager.verify("fetchRepos(language: String, perPage: Int, page: Int, completion: @escaping (Result<GitHubReposResponse, Error>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ReposListInteractorProtocolStub: ReposListInteractorProtocol {
    

    

    
     func fetchRepos(language: String, perPage: Int, page: Int, completion: @escaping (Result<GitHubReposResponse, Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: GitHubClient/View/ReposList/Presenter/ReposListPresenter.swift at 2021-05-16 12:55:58 +0000

//
//  ReposListPresenter.swift
//
//  Created by branch10480 on 2021/5/11.
//  Copyright © 2021 branch10480. All rights reserved.
//

import Cuckoo
@testable import GitHubClient

import DifferenceKit
import Foundation


 class MockReposListPresenterProtocol: ReposListPresenterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ReposListPresenterProtocol
    
     typealias Stubbing = __StubbingProxy_ReposListPresenterProtocol
     typealias Verification = __VerificationProxy_ReposListPresenterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ReposListPresenterProtocol?

     func enableDefaultImplementation(_ stub: ReposListPresenterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var dataSource: [ReposListSectionModel] {
        get {
            return cuckoo_manager.getter("dataSource",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.dataSource)
        }
        
    }
    

    

    
    
    
     func viewDidLoad()  {
        
    return cuckoo_manager.call("viewDidLoad()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewDidLoad())
        
    }
    
    
    
     func didTapRepoRow(indexPath: IndexPath)  {
        
    return cuckoo_manager.call("didTapRepoRow(indexPath: IndexPath)",
            parameters: (indexPath),
            escapingParameters: (indexPath),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didTapRepoRow(indexPath: indexPath))
        
    }
    
    
    
     func didScrollToBottom()  {
        
    return cuckoo_manager.call("didScrollToBottom()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didScrollToBottom())
        
    }
    

	 struct __StubbingProxy_ReposListPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var dataSource: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockReposListPresenterProtocol, [ReposListSectionModel]> {
	        return .init(manager: cuckoo_manager, name: "dataSource")
	    }
	    
	    
	    func viewDidLoad() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockReposListPresenterProtocol.self, method: "viewDidLoad()", parameterMatchers: matchers))
	    }
	    
	    func didTapRepoRow<M1: Cuckoo.Matchable>(indexPath: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(IndexPath)> where M1.MatchedType == IndexPath {
	        let matchers: [Cuckoo.ParameterMatcher<(IndexPath)>] = [wrap(matchable: indexPath) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockReposListPresenterProtocol.self, method: "didTapRepoRow(indexPath: IndexPath)", parameterMatchers: matchers))
	    }
	    
	    func didScrollToBottom() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockReposListPresenterProtocol.self, method: "didScrollToBottom()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ReposListPresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var dataSource: Cuckoo.VerifyReadOnlyProperty<[ReposListSectionModel]> {
	        return .init(manager: cuckoo_manager, name: "dataSource", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func viewDidLoad() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didTapRepoRow<M1: Cuckoo.Matchable>(indexPath: M1) -> Cuckoo.__DoNotUse<(IndexPath), Void> where M1.MatchedType == IndexPath {
	        let matchers: [Cuckoo.ParameterMatcher<(IndexPath)>] = [wrap(matchable: indexPath) { $0 }]
	        return cuckoo_manager.verify("didTapRepoRow(indexPath: IndexPath)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func didScrollToBottom() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("didScrollToBottom()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ReposListPresenterProtocolStub: ReposListPresenterProtocol {
    
    
     var dataSource: [ReposListSectionModel] {
        get {
            return DefaultValueRegistry.defaultValue(for: ([ReposListSectionModel]).self)
        }
        
    }
    

    

    
     func viewDidLoad()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didTapRepoRow(indexPath: IndexPath)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func didScrollToBottom()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockReposListPresenterOutputProtocol: ReposListPresenterOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ReposListPresenterOutputProtocol
    
     typealias Stubbing = __StubbingProxy_ReposListPresenterOutputProtocol
     typealias Verification = __VerificationProxy_ReposListPresenterOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ReposListPresenterOutputProtocol?

     func enableDefaultImplementation(_ stub: ReposListPresenterOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func updateCollectionViewData(with: StagedChangeset<[ReposListSectionModel]>, completion: @escaping () -> Void)  {
        
    return cuckoo_manager.call("updateCollectionViewData(with: StagedChangeset<[ReposListSectionModel]>, completion: @escaping () -> Void)",
            parameters: (with, completion),
            escapingParameters: (with, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.updateCollectionViewData(with: with, completion: completion))
        
    }
    
    
    
     func showProgressHUD()  {
        
    return cuckoo_manager.call("showProgressHUD()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showProgressHUD())
        
    }
    
    
    
     func dismissProgressHUD()  {
        
    return cuckoo_manager.call("dismissProgressHUD()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.dismissProgressHUD())
        
    }
    
    
    
     func showErrorMessage(_ parameter0: String)  {
        
    return cuckoo_manager.call("showErrorMessage(_: String)",
            parameters: (parameter0),
            escapingParameters: (parameter0),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showErrorMessage(parameter0))
        
    }
    

	 struct __StubbingProxy_ReposListPresenterOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func updateCollectionViewData<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(with: M1, completion: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(StagedChangeset<[ReposListSectionModel]>, () -> Void)> where M1.MatchedType == StagedChangeset<[ReposListSectionModel]>, M2.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(StagedChangeset<[ReposListSectionModel]>, () -> Void)>] = [wrap(matchable: with) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockReposListPresenterOutputProtocol.self, method: "updateCollectionViewData(with: StagedChangeset<[ReposListSectionModel]>, completion: @escaping () -> Void)", parameterMatchers: matchers))
	    }
	    
	    func showProgressHUD() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockReposListPresenterOutputProtocol.self, method: "showProgressHUD()", parameterMatchers: matchers))
	    }
	    
	    func dismissProgressHUD() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockReposListPresenterOutputProtocol.self, method: "dismissProgressHUD()", parameterMatchers: matchers))
	    }
	    
	    func showErrorMessage<M1: Cuckoo.Matchable>(_ parameter0: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: parameter0) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockReposListPresenterOutputProtocol.self, method: "showErrorMessage(_: String)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ReposListPresenterOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func updateCollectionViewData<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(with: M1, completion: M2) -> Cuckoo.__DoNotUse<(StagedChangeset<[ReposListSectionModel]>, () -> Void), Void> where M1.MatchedType == StagedChangeset<[ReposListSectionModel]>, M2.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(StagedChangeset<[ReposListSectionModel]>, () -> Void)>] = [wrap(matchable: with) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("updateCollectionViewData(with: StagedChangeset<[ReposListSectionModel]>, completion: @escaping () -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showProgressHUD() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("showProgressHUD()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func dismissProgressHUD() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("dismissProgressHUD()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showErrorMessage<M1: Cuckoo.Matchable>(_ parameter0: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: parameter0) { $0 }]
	        return cuckoo_manager.verify("showErrorMessage(_: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ReposListPresenterOutputProtocolStub: ReposListPresenterOutputProtocol {
    

    

    
     func updateCollectionViewData(with: StagedChangeset<[ReposListSectionModel]>, completion: @escaping () -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showProgressHUD()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func dismissProgressHUD()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showErrorMessage(_ parameter0: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: GitHubClient/View/ReposList/Router/ReposListRouter.swift at 2021-05-16 12:55:58 +0000

//
//  ReposListView.swift
//
//  Created by branch10480 on 2021/5/11.
//  Copyright © 2021 branch10480. All rights reserved.
//

import Cuckoo
@testable import GitHubClient

import UIKit


 class MockReposListRouterProtocol: ReposListRouterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = ReposListRouterProtocol
    
     typealias Stubbing = __StubbingProxy_ReposListRouterProtocol
     typealias Verification = __VerificationProxy_ReposListRouterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ReposListRouterProtocol?

     func enableDefaultImplementation(_ stub: ReposListRouterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func showRepositoryDetailView(url: String)  {
        
    return cuckoo_manager.call("showRepositoryDetailView(url: String)",
            parameters: (url),
            escapingParameters: (url),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showRepositoryDetailView(url: url))
        
    }
    

	 struct __StubbingProxy_ReposListRouterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showRepositoryDetailView<M1: Cuckoo.Matchable>(url: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: url) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockReposListRouterProtocol.self, method: "showRepositoryDetailView(url: String)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ReposListRouterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showRepositoryDetailView<M1: Cuckoo.Matchable>(url: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: url) { $0 }]
	        return cuckoo_manager.verify("showRepositoryDetailView(url: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ReposListRouterProtocolStub: ReposListRouterProtocol {
    

    

    
     func showRepositoryDetailView(url: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: GitHubClient/View/ReposList/View/ReposListViewController.swift at 2021-05-16 12:55:58 +0000

//
//  ReposListView.swift
//
//  Created by branch10480 on 2021/5/11.
//  Copyright © 2021 branch10480. All rights reserved.
//

import Cuckoo
@testable import GitHubClient

import DifferenceKit
import UIKit

// MARK: - Mocks generated from file: GitHubClient/View/WebView/Router/WebViewRouter.swift at 2021-05-16 12:55:58 +0000

//
//  WebViewView.swift
//
//  Created by branch10480 on 2021/5/14.
//  Copyright © 2021 branch10480. All rights reserved.
//

import Cuckoo
@testable import GitHubClient

import SafariServices
import UIKit


 class MockWebViewRouterProtocol: WebViewRouterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = WebViewRouterProtocol
    
     typealias Stubbing = __StubbingProxy_WebViewRouterProtocol
     typealias Verification = __VerificationProxy_WebViewRouterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: WebViewRouterProtocol?

     func enableDefaultImplementation(_ stub: WebViewRouterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    

	 struct __StubbingProxy_WebViewRouterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	}

	 struct __VerificationProxy_WebViewRouterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	}
}

 class WebViewRouterProtocolStub: WebViewRouterProtocol {
    

    

    
}

