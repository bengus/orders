//
//  OrderDetailsViewController.swift
//  orders
//
//  Created by Boris Bengus on 16.04.2021.
//

import Foundation

final class OrderDetailsViewController: BaseViewController {
    private let seed: OrderDetailsSeed
    
    
    // MARK: - Init
    init(seed: OrderDetailsSeed) {
        self.seed = seed
        super.init()
    }
    
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = String(
            format: "OrderDetailsNavTitleFormat_%@".localized,
            String(seed.orderId)
        )
    }
}
