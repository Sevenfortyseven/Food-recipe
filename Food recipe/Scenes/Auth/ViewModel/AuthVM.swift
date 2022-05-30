//
//  InitialVM.swift
//  Food recipe
//
//  Created by aleksandre on 28.05.22.
//

import Foundation


class AuthViewModel
{
    
    // Observables
    public var fieldsEmpty: ObservableObject<Bool> = ObservableObject(value: false)
    public var invalidEmail: ObservableObject<Bool> = ObservableObject(value: false)
    
    deinit {
        print("\(self) ViewModel was deinitialized")
    }
    
    /// Validae user input fields
    public func validate(_ email: String, _ password: String) {
        let email = email.trimmingCharacters(in: .whitespacesAndNewlines)
        let pass = password.trimmingCharacters(in: .whitespacesAndNewlines)
        guard email != "",
              pass != ""
        else {
            fieldsEmpty.value = true
            return
        }
        guard email.isValidEmail() else { invalidEmail.value = true; return }
    }
}
