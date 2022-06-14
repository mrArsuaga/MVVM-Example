//
//  ObservableObject.swift
//  MVVM Example
//
//  Created by Jose Arsuaga on 13/06/22.
//

import Foundation


final class ObservableObject<T> {
    
    var value: T?
    
    private var listener: ((T?) -> Void)?
    
    init(_ value: T?) {
        self.value = value
    }
    
    func bind(_ listener: @escaping (T?) -> Void) {
        listener(value)
        self.listener = listener
    }
}
