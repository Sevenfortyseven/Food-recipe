//
//  UIViewController+.swift
//  Food recipe
//
//  Created by aleksandre on 30.05.22.
//

import UIKit


extension UIViewController
{
    enum AlertType {
        case emptyFields
        case invalidEmail
        case weakPassword
        case shortUsername
        case passwordMismatch
        case signUpError
        case signUpSuccess
        case wrongDetails
    }
    
    
    internal func showAlert(_ alertType: AlertType, completion: (() -> Void)? = nil, alertHandler: ((UIAlertAction) -> Void)? = nil) {
        var alert: UIAlertController
        switch alertType {
        case .emptyFields:
            alert = UIAlertController(title: "Please complete all required fields", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: alertHandler))
        case .invalidEmail:
            alert = UIAlertController(title: "Invalid Email", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: alertHandler))
        case .weakPassword:
            alert = UIAlertController(title: "Password must be at least 5 characters long", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: alertHandler))
        case .shortUsername:
            alert = UIAlertController(title: "Username must be at least 5 characters long", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: alertHandler))
        case .passwordMismatch:
            alert = UIAlertController(title: "Passwords do not match", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: alertHandler))
        case .signUpError:
            alert = UIAlertController(title: "Error while signing up ", message: "Please try again", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: alertHandler))
        case .signUpSuccess:
            alert = UIAlertController(title: "You're all set", message: "Registration was successful, transfering on main page", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Transfer to main page", style: .default, handler: alertHandler))
        case .wrongDetails:
            alert = UIAlertController(title: "Wrong details", message: "please check your details and try again", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: alertHandler))
        }
        present(alert, animated: true, completion: completion)
    }
}
