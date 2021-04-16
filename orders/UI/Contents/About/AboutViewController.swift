//
//  AboutViewController.swift
//  orders
//
//  Created by Boris Bengus on 16.04.2021.
//

import Foundation
import UIKit

final class AboutViewController: BaseViewController {
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "AboutNavTitle".localized
    }
}
