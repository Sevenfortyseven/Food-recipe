//
//  SignUpVM.swift
//  Food recipe
//
//  Created by aleksandre on 30.05.22.
//

import Foundation


class SignUpViewModel
{
    
    
    
    /// Validate all user input fields
    /// if there are no errors send sign up request
    /// otherwise set appropriate observable objects
    /// to notify users about the errors
    public func signUpUser(_ username: String, _ email: String,
                         _ password: String, _ validatedPassword: String) {
        
        guard username != "", email != "",
              password != "", validatedPassword != "" else {
            // TODO: Notify
            return
        }
        // Trim input data
        let username = username.trimmingCharacters(in: .whitespacesAndNewlines)
        let email = email.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = password.trimmingCharacters(in: .whitespacesAndNewlines)
        let validatedPassword = validatedPassword.trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard password == validatedPassword else {
            // TODO: Notify
            return
        }
        guard email.isValidEmail() else {
            // TODO: Notify
            return
        }
        guard username.hasMinimumCharacters() else {
            // TODO: Notify
            return
        }
        
        // TODO: Send Request !! 
    }
    
}
