//
//  LoginView.swift
//  Food recipe
//
//  Created by aleksandre on 28.05.22.
//

import UIKit


class LoginView: UIView
{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    
    
    // MARK: -- Components --
    
    private let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Email"
        label.font = .body
        label.textColor = .secondaryColor
        return label
    }()
    
    private let passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.font = .body
        label.textColor = .secondaryColor
        return label
    }()
    
    private let autoLoginToggleLabel: UILabel = {
        let label = UILabel()
        label.text = "Remember Me"
        label.font = .smallText
        label.textColor = .secondaryColor
        return label
    }()
    
    
}

