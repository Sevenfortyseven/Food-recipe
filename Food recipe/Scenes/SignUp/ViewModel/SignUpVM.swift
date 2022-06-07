//
//  SignUpVM.swift
//  Food recipe
//
//  Created by aleksandre on 30.05.22.
//

import Foundation
import FirebaseAuth


public class SignUpViewModel
{
    
    // MARK: - Observable Objects
    public var emptyFields: ObservableObject<Bool> = ObservableObject(value: false)
    public var passwordMissmatch: ObservableObject<Bool> = ObservableObject(value: false)
    public var invalidEmail: ObservableObject<Bool> = ObservableObject(value: false)
    public var shortUsername: ObservableObject<Bool> = ObservableObject(value: false)
    public var weakPassword: ObservableObject<Bool> = ObservableObject(value: false)
    public var signUpError: ObservableObject<Bool> = ObservableObject(value: false)
    public var signUpSuccess: ObservableObject<Bool> = ObservableObject(value: false)
    
    // MARK: - Initialization
    public init() { }
    
    deinit {
        print("signupVM deinitialized")
    }
    
    /// Validate all user input fields
    /// if there are no errors send sign up request
    /// otherwise set appropriate observable objects
    /// to notify users about the errors
    public func signUpUser(_ username: String, _ email: String,
                         _ password: String, _ validatedPassword: String) {
        
        guard username != "", email != "",
              password != "", validatedPassword != "" else {
            emptyFields.value = true
            return
        }
        // Trim input data
        let username = username.trimmingCharacters(in: .whitespacesAndNewlines)
        let email = email.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = password.trimmingCharacters(in: .whitespacesAndNewlines)
        let validatedPassword = validatedPassword.trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard password.hasMinimumCharacters() else {
            weakPassword.value = true
            return
        }
        guard password == validatedPassword else {
            passwordMissmatch.value = true
            return
        }
        guard email.isValidEmail() else {
            invalidEmail.value = true
            return
        }
        guard username.hasMinimumCharacters() else {
            shortUsername.value = true
            return
        }
        
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            guard error == nil,
                  authResult != nil else {
                self.signUpError.value = true
                return
            }
            self.signUpSuccess.value = true
        }
    }
    
}
