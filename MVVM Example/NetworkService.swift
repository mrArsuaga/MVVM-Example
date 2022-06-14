//
//  NetworkService.swift
//  MVVM Example
//
//  Created by Jose Arsuaga on 13/06/22.
//

import Foundation

final class NetworkService {
    static let shared = NetworkService()
    private var user: User?
    
    private init() { }
    
    func login(email: String, password: String, completion: @escaping (Bool) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            if email == "test@test.com" && password == "password" {
                self?.user = User(firstName: "José",
                            lastName: "Arsuaga",
                            email: email,
                            age: 32)
                completion(true)
            } else {
                self?.user = nil
                completion(false)
            }
        }
    }
    
    func getLoggedInUser() -> User? {
        return user
    }
}
