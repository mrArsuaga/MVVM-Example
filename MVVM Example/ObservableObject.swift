//
//  ObservableObject.swift
//  MVVM Example
//
//  Created by Jose Arsuaga on 15/06/22.
//

import Foundation

final class ObservableObject<T> {
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    var listener: ((T) -> Void)?
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(listener: @escaping (T) -> Void) {
        self.listener = listener
        //listener(value)
    }
    
}
