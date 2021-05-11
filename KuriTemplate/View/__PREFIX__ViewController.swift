//
//  __PREFIX__View.swift
//
//  Created by __USERNAME__ on __DATE__.
//  Copyright © __YEAR__ __USERNAME__. All rights reserved.
//

import UIKit

final class __PREFIX__ViewController: UIViewController {
    
    private var presenter: __PREFIX__PresenterProtocol!
    
    func inject(
        presenter: __PREFIX__PresenterProtocol
    ) {
        self.presenter = presenter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
    }
}

extension __PREFIX__ViewController: __PREFIX__PresenterOutputProtocol {
}
