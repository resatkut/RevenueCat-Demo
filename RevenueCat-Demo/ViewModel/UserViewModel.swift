//
//  UserViewModel.swift
//  RevenueCat-Demo
//
//  Created by Reşat Kut on 3.02.2023.
//

import Foundation
import SwiftUI
import RevenueCat

class UserViewModel: ObservableObject {
    
    @Published var isSubscriptionActive = false
    
    init() {
        
        Purchases.shared.getCustomerInfo { (customerInfo, error) in
            
                
            self.isSubscriptionActive = customerInfo?.entitlements.all["pro"]?.isActive == true
            
        }
    }
    
}
