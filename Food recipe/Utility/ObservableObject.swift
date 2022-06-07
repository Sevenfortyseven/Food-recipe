//
//  ObservableObject.swift
//  Food recipe
//
//  Created by aleksandre on 30.05.22.
//

import Foundation


public class ObservableObject<T> {
    
    public var value: T {
        didSet {
            listener?(value)
        }
    }
    
    
    init(value: T) {
        self.value = value
    }
    
    public var listener: ((T) -> Void)?
    
    public func bind(listener: @escaping (T) -> Void) {
        listener(value)
        self.listener = listener
    }
}
