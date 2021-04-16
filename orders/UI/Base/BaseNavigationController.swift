//
//  BaseNavigationController.swift
//  orders
//
//  Created by Boris Bengus on 16.04.2021.
//

import Foundation
import UIKit

class BaseNavigationController: UINavigationController {
    // MARK: - Init
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable, message: "Use another init()")
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = Design.Colors.screenBackround
        self.navigationBar.isTranslucent = false
        self.navigationBar.tintColor = Design.Colors.navBarText
    }
}
