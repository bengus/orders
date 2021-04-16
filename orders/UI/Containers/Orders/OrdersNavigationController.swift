//
//  OrdersNavigationController.swift
//  orders
//
//  Created by Boris Bengus on 16.04.2021.
//

import Foundation
import UIKit

final class OrdersNavigationController: BaseNavigationController {
    private let orderListFactory: () -> OrderListViewController
    private let orderDetailsFactory: (OrderDetailsSeed) -> OrderDetailsViewController
    
    
    // MARK: - Init
    init(
        orderListFactory: @escaping () -> OrderListViewController,
        orderDetailsFactory: @escaping (OrderDetailsSeed) -> OrderDetailsViewController
    ) {
        self.orderListFactory = orderListFactory
        self.orderDetailsFactory = orderDetailsFactory
        
        super.init()
    }
    
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        start()
    }
    
    
    // MARK: - Private
    private func start() {
        openOrderList(animated: false)
    }
    
    private func openOrderList(animated: Bool) {
        let orderListViewController = orderListFactory()
        orderListViewController.onOpenOrderDetails = { [weak self] orderId in
            self?.openOrderDetails(
                orderId: orderId,
                animated: true
            )
        }
        pushViewController(
            orderListViewController,
            animated: animated
        )
    }
    
    private func openOrderDetails(
        orderId: Int,
        animated: Bool
    ) {
        let orderDetailsViewController = orderDetailsFactory(OrderDetailsSeed(orderId: orderId))
        pushViewController(
            orderDetailsViewController,
            animated: animated
        )
    }
}
