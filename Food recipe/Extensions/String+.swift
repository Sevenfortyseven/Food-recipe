//
//  String++.swift
//  Food recipe
//
//  Created by aleksandre on 30.05.22.
//

import Foundation

extension String
{
    
    /// Validate String for valid email
    public func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self)
    }
}
