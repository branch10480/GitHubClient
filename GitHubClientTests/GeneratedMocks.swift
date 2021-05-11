// MARK: - Mocks generated from file: GitHubClient/View/ReposList/Interactor/ReposListInteractor.swift at 2021-05-11 15:51:39 +0000

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
    

    

    

    

	 struct __StubbingProxy_ReposListInteractorProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
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
	
	    
	
	    
	}
}

 class ReposListInteractorProtocolStub: ReposListInteractorProtocol {
    

    

    
}


// MARK: - Mocks generated from file: GitHubClient/View/ReposList/Router/ReposListRouter.swift at 2021-05-11 15:51:39 +0000

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


// MARK: - Mocks generated from file: GitHubClient/View/ReposList/View/ReposListViewController.swift at 2021-05-11 15:51:39 +0000

//
//  ReposListView.swift
//
//  Created by branch10480 on 2021/5/11.
//  Copyright © 2021 branch10480. All rights reserved.
//

import Cuckoo
@testable import GitHubClient

import UIKit
