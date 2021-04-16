//
//  DIContainerProtocol.swift
//  orders
//
//  Created by Boris Bengus on 16.04.2021.
//

import Foundation

protocol DIContainerProtocol {
    // MARK: - Services
    var orderDataProvider: OrderDataProviderProtocol { get }
    
    
    // MARK: - Container screens
    func getHomeTabBarController() -> HomeTabBarController
    
    func getOrdersNavigationController() -> OrdersNavigationController
    
    func getAboutNavigationController() -> AboutNavigationController
    
    
    // MARK: - Content screens
    func getOrderListViewController() -> OrderListViewController
    
    func getOrderDetailsViewController(seed: OrderDetailsSeed) -> OrderDetailsViewController
    
    func getAboutViewController() -> AboutViewController
}
