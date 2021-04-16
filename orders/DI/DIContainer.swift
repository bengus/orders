//
//  DIContainer.swift
//  orders
//
//  Created by Boris Bengus on 16.04.2021.
//

import Foundation
import UIKit

final class DIContainer: DIContainerProtocol {
    private let app: UIApplication
    
    
    // MARK: - Init
    init(app: UIApplication) {
        self.app = app
    }
    
    
    // MARK: - Services
    private(set) lazy var orderDataProvider: OrderDataProviderProtocol = {
        return OrderDataProvider()
    }()
    
    
    // MARK: - Container screens
    func getHomeTabBarController() -> HomeTabBarController {
        return HomeTabBarController(
            ordersFactory: { self.getOrdersNavigationController() }, // hold strong self, it's ok in this case
            aboutFactory: { self.getAboutNavigationController() }    // hold strong self, it's ok in this case
        )
    }
    
    func getOrdersNavigationController() -> OrdersNavigationController {
        return OrdersNavigationController(
            orderListFactory: { self.getOrderListViewController() },              // hold strong self, it's ok in this case
            orderDetailsFactory: { self.getOrderDetailsViewController(seed: $0) } // hold strong self, it's ok in this case
        )
    }
    
    func getAboutNavigationController() -> AboutNavigationController {
        return AboutNavigationController(aboutFactory: { self.getAboutViewController() }) // // hold strong self, it's ok in this case
    }
    
    
    // MARK: - Content screens
    func getOrderListViewController() -> OrderListViewController {
        return OrderListViewController(
            orderDataProvider: self.orderDataProvider,
            orderDetailsFactory: { self.getOrderDetailsViewController(seed: $0) } // hold strong self, it's ok in this case
        )
    }
    
    func getOrderDetailsViewController(seed: OrderDetailsSeed) -> OrderDetailsViewController {
        return OrderDetailsViewController(seed: seed)
    }
    
    func getAboutViewController() -> AboutViewController {
        return AboutViewController()
    }
}
