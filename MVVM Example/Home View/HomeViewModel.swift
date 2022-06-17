//
//  HomeViewModel.swift
//  MVVM Example
//
//  Created by Jose Arsuaga on 15/06/22.
//

import Foundation

final class HomeViewModel {
    
    var message: ObservableObject<String> = ObservableObject("")
    
    func getCurrentUser() {
        guard let user = NetworkService.shared.getUser() else { return }
        message.value = "Hello, \(user.firstName) \(user.lastName)"
    }
    
}
