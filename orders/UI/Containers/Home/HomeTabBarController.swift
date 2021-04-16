//
//  HomeTabBarController.swift
//  orders
//
//  Created by Boris Bengus on 16.04.2021.
//

import Foundation
import UIKit

final class HomeTabBarController: BaseTabBarController {
    private let ordersFactory: () -> OrdersNavigationController
    private let aboutFactory: () -> AboutNavigationController
    
    
    // MARK: - Embedded child screens
    private lazy var ordersNavigationController: OrdersNavigationController = {
        let viewController = ordersFactory()
        viewController.tabBarItem.title = "HomeOrdersTabTitle".localized
        viewController.tabBarItem.image = UIImage(named: "tabbar_order")
        
        return viewController
    }()
    
    private lazy var aboutNavigationController: AboutNavigationController = {
        let viewController = aboutFactory()
        viewController.tabBarItem.title = "HomeAboutTabTitle".localized
        viewController.tabBarItem.image = UIImage(named: "tabbar_profile")
        
        return viewController
    }()
    
    
    // MARK: - Init
    init(
        ordersFactory: @escaping () -> OrdersNavigationController,
        aboutFactory: @escaping () -> AboutNavigationController
    ) {
        self.ordersFactory = ordersFactory
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
        setViewControllers(
            [
                ordersNavigationController,
                aboutNavigationController
            ],
            animated: false
        )
    }
}
