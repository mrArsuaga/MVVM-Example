//
//  LoginViewModel.swift
//  MVVM Example
//
//  Created by Jose Arsuaga on 15/06/22.
//

import Foundation

final class LoginViewModel {
    
    //Output
    var error: ObservableObject<String?> = ObservableObject("")
    
    //Input
    var credentials: ObservableObject<(email: String, password: String)> = ObservableObject(("",""))
    
    init() {
        setupBinders()
    }
    
    private func setupBinders() {
        credentials.bind { [weak self] (email, password) in
            self?.loginUser(email: email, password: password)
        }
    }
    
    private func loginUser(email: String, password: String) {
        NetworkService.shared.login(email: email, password: password) { [weak self] success in
            self?.error.value = success ? nil : "Invalid credentials"
        }
    }
    
}
