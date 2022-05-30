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
    }
    
    
    internal func showAlert(_ alertType: AlertType, completion: (() -> Void)? = nil, alertHandler: ((UIAlertAction) -> Void)? = nil) {
        var alert: UIAlertController
        switch alertType {
        case .emptyFields:
            alert = UIAlertController(title: "Please complete all required fields", message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: alertHandler))
        case .invalidEmail:
            alert = UIAlertController(title: "Invalid Email", message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: alertHandler))
        case .weakPassword:
            alert = UIAlertController(title: "Please fill all required fields", message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: alertHandler))
        }
        present(alert, animated: true, completion: completion)
    }
}
