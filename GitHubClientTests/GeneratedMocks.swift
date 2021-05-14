// MARK: - Mocks generated from file: GitHubClient/Gateway/GitHubRepository.swift at 2021-05-14 03:54:33 +0000

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
    

    

    

    
    
    
     func fetchRepos(language: String, completion: @escaping (Result<[GitHubRepo], Error>) -> Void)  {
        
    return cuckoo_manager.call("fetchRepos(language: String, completion: @escaping (Result<[GitHubRepo], Error>) -> Void)",
            parameters: (language, completion),
            escapingParameters: (language, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetchRepos(language: language, completion: completion))
        
    }
    

	 struct __StubbingProxy_GitHubRepositoryProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func fetchRepos<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(language: M1, completion: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(String, (Result<[GitHubRepo], Error>) -> Void)> where M1.MatchedType == String, M2.MatchedType == (Result<[GitHubRepo], Error>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (Result<[GitHubRepo], Error>) -> Void)>] = [wrap(matchable: language) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGitHubRepositoryProtocol.self, method: "fetchRepos(language: String, completion: @escaping (Result<[GitHubRepo], Error>) -> Void)", parameterMatchers: matchers))
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
	    func fetchRepos<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(language: M1, completion: M2) -> Cuckoo.__DoNotUse<(String, (Result<[GitHubRepo], Error>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == (Result<[GitHubRepo], Error>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (Result<[GitHubRepo], Error>) -> Void)>] = [wrap(matchable: language) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("fetchRepos(language: String, completion: @escaping (Result<[GitHubRepo], Error>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GitHubRepositoryProtocolStub: GitHubRepositoryProtocol {
    

    

    
     func fetchRepos(language: String, completion: @escaping (Result<[GitHubRepo], Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: GitHubClient/View/ReposList/Interactor/ReposListInteractor.swift at 2021-05-14 03:54:33 +0000

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
    

    

    

    
    
    
     func fetchRepos(language: String, completion: @escaping (Result<[GitHubRepo], Error>) -> Void)  {
        
    return cuckoo_manager.call("fetchRepos(language: String, completion: @escaping (Result<[GitHubRepo], Error>) -> Void)",
            parameters: (language, completion),
            escapingParameters: (language, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetchRepos(language: language, completion: completion))
        
    }
    

	 struct __StubbingProxy_ReposListInteractorProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func fetchRepos<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(language: M1, completion: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(String, (Result<[GitHubRepo], Error>) -> Void)> where M1.MatchedType == String, M2.MatchedType == (Result<[GitHubRepo], Error>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (Result<[GitHubRepo], Error>) -> Void)>] = [wrap(matchable: language) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockReposListInteractorProtocol.self, method: "fetchRepos(language: String, completion: @escaping (Result<[GitHubRepo], Error>) -> Void)", parameterMatchers: matchers))
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
	    func fetchRepos<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(language: M1, completion: M2) -> Cuckoo.__DoNotUse<(String, (Result<[GitHubRepo], Error>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == (Result<[GitHubRepo], Error>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (Result<[GitHubRepo], Error>) -> Void)>] = [wrap(matchable: language) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("fetchRepos(language: String, completion: @escaping (Result<[GitHubRepo], Error>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ReposListInteractorProtocolStub: ReposListInteractorProtocol {
    

    

    
     func fetchRepos(language: String, completion: @escaping (Result<[GitHubRepo], Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: GitHubClient/View/ReposList/Presenter/ReposListPresenter.swift at 2021-05-14 03:54:33 +0000

//
//  ReposListPresenter.swift
//
//  Created by branch10480 on 2021/5/11.
//  Copyright © 2021 branch10480. All rights reserved.
//

import Cuckoo
@testable import GitHubClient

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
    

    

    

    
    
    
     func viewDidAppear()  {
        
    return cuckoo_manager.call("viewDidAppear()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.viewDidAppear())
        
    }
    

	 struct __StubbingProxy_ReposListPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func viewDidAppear() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockReposListPresenterProtocol.self, method: "viewDidAppear()", parameterMatchers: matchers))
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
	
	    
	
	    
	    @discardableResult
	    func viewDidAppear() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidAppear()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ReposListPresenterProtocolStub: ReposListPresenterProtocol {
    

    

    
     func viewDidAppear()   {
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
    

    

    

    
    
    
     func updateCollectionViewData(with: [GitHubRepoViewData])  {
        
    return cuckoo_manager.call("updateCollectionViewData(with: [GitHubRepoViewData])",
            parameters: (with),
            escapingParameters: (with),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.updateCollectionViewData(with: with))
        
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
    

	 struct __StubbingProxy_ReposListPresenterOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func updateCollectionViewData<M1: Cuckoo.Matchable>(with: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([GitHubRepoViewData])> where M1.MatchedType == [GitHubRepoViewData] {
	        let matchers: [Cuckoo.ParameterMatcher<([GitHubRepoViewData])>] = [wrap(matchable: with) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockReposListPresenterOutputProtocol.self, method: "updateCollectionViewData(with: [GitHubRepoViewData])", parameterMatchers: matchers))
	    }
	    
	    func showProgressHUD() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockReposListPresenterOutputProtocol.self, method: "showProgressHUD()", parameterMatchers: matchers))
	    }
	    
	    func dismissProgressHUD() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockReposListPresenterOutputProtocol.self, method: "dismissProgressHUD()", parameterMatchers: matchers))
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
	    func updateCollectionViewData<M1: Cuckoo.Matchable>(with: M1) -> Cuckoo.__DoNotUse<([GitHubRepoViewData]), Void> where M1.MatchedType == [GitHubRepoViewData] {
	        let matchers: [Cuckoo.ParameterMatcher<([GitHubRepoViewData])>] = [wrap(matchable: with) { $0 }]
	        return cuckoo_manager.verify("updateCollectionViewData(with: [GitHubRepoViewData])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
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
	    
	}
}

 class ReposListPresenterOutputProtocolStub: ReposListPresenterOutputProtocol {
    

    

    
     func updateCollectionViewData(with: [GitHubRepoViewData])   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showProgressHUD()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func dismissProgressHUD()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: GitHubClient/View/ReposList/Router/ReposListRouter.swift at 2021-05-14 03:54:33 +0000

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
    

    

    

    

	 struct __StubbingProxy_ReposListRouterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
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
	
	    
	
	    
	}
}

 class ReposListRouterProtocolStub: ReposListRouterProtocol {
    

    

    
}


// MARK: - Mocks generated from file: GitHubClient/View/ReposList/View/ReposListViewController.swift at 2021-05-14 03:54:33 +0000

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
