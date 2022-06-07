//
//  InitialVM.swift
//  Food recipe
//
//  Created by aleksandre on 28.05.22.
//

import Foundation
import FirebaseAuth


class AuthViewModel
{
    
    // Observables
    public var fieldsEmpty: ObservableObject<Bool> = ObservableObject(value: false)
    public var invalidEmail: ObservableObject<Bool> = ObservableObject(value: false)
    public var wrongDetails: ObservableObject<Bool> = ObservableObject(value: false)
    public var signInSuccess: ObservableObject<Bool> = ObservableObject(value: false)
    
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
        
        Auth.auth().signIn(withEmail: email, password: pass) { [weak self] authResult, error in
            guard let self = self else { return }
            guard authResult != nil,
                  error == nil else {
                self.wrongDetails.value = true
                return
            }
            self.signInSuccess.value = true
        }
    }
}
