//
//  String+Localized.swift
//  orders
//
//  Created by Boris Bengus on 16.04.2021.
//

import Foundation

extension String {
    var localized: String {
        let result = NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
        
        if result.isEmpty {
            return self
        }
        
        return result
    }
}
