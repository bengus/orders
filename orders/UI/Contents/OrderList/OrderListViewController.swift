//
//  OrderListViewController.swift
//  orders
//
//  Created by Boris Bengus on 16.04.2021.
//

import Foundation
import UIKit

final class OrderListViewController: BaseViewController {
    private let orderDataProvider: OrderDataProviderProtocol
    private let orderDetailsFactory: (OrderDetailsSeed) -> OrderDetailsViewController
    
    
    // MARK: - Init
    init(
        orderDataProvider: OrderDataProviderProtocol,
        orderDetailsFactory: @escaping (OrderDetailsSeed) -> OrderDetailsViewController
    ) {
        self.orderDataProvider = orderDataProvider
        self.orderDetailsFactory = orderDetailsFactory
        
        super.init()
    }
    
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "OrderListNavTitle".localized
        reload()
        update()
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped(gesture:)))
        view.isUserInteractionEnabled = true
        view.addGestureRecognizer(gesture)
    }
    
    @objc
    private func viewTapped(gesture: UITapGestureRecognizer) {
        onOpenOrderDetails?(123)
    }
    
    
    // MARK: - Internal
    var onOpenOrderDetails: ((_ orderId: Int) -> Void)?
    
    
    // MARK: - Private
    private func update() {
        
    }
    
    private func reload() {
        
    }
}
