//
//  HomeViewModel.swift
//  MVVM Example
//
//  Created by Jose Arsuaga on 13/06/22.
//

import Foundation

final class HomeViewModel {
    var welcomeMessage: ObservableObject<String?> = ObservableObject(nil)
    
    func getLoggedInUser() {
        guard let user = NetworkService.shared.getLoggedInUser() else { return }
        self.welcomeMessage.value = "Hello, \(user.firstName) \(user.lastName)"
    }
}
