//
//  AboutNavigationController.swift
//  orders
//
//  Created by Boris Bengus on 16.04.2021.
//

import Foundation
import UIKit

final class AboutNavigationController: BaseNavigationController {
    private let aboutFactory: () -> AboutViewController
    
    
    // MARK: - Init
    init(aboutFactory: @escaping () -> AboutViewController) {
        self.aboutFactory = aboutFactory
        
        super.init()
    }
    
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        start()
    }
    
    
    // MARK: - Private
    private func start() {
        let aboutViewController = aboutFactory()
        pushViewController(
            aboutViewController,
            animated: false
        )
    }
}
