//
//  LoginView.swift
//  Food recipe
//
//  Created by aleksandre on 28.05.22.
//

import UIKit
import SnapKit

class LoginInputModule: UIView
{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    
    public func initialize() {
        addSubviews()
        initializeConstraints()
    }
    
    
    private func addSubviews() {
        addSubview(masterStack)
        masterStack.addArrangedSubview(emailStack)
        masterStack.addArrangedSubview(passwordStack)
        masterStack.addArrangedSubview(checkboxStack)
        emailStack.addArrangedSubview(emailLabel)
        emailStack.addArrangedSubview(emailTextField)
        passwordStack.addArrangedSubview(passwordLabel)
        passwordStack.addArrangedSubview(passwordTextField)
        checkboxStack.addArrangedSubview(checkbox)
        checkboxStack.addArrangedSubview(autoLoginToggleLabel)
    }
    
    
    // MARK: -- Components --
    
    private var masterStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fill
        stack.spacing = Constants.StackView.spacingL
        return stack
    }()
    
    private var emailStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fill
        stack.spacing = Constants.StackView.spacingM
        return stack
    }()
    
    private var passwordStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fill
        stack.spacing = Constants.StackView.spacingM
        return stack
    }()
    
    private var checkboxStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fill
        stack.spacing = Constants.StackView.spacingS
        return stack
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Email"
        label.font = .body
        label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        label.textColor = .textColor
        label.adjustsFontForContentSizeCategory = true
        return label
    }()
    
    private let passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.font = .body
        label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        label.textColor = .textColor
        label.adjustsFontForContentSizeCategory = true
        return label
    }()
    
    private let autoLoginToggleLabel: UILabel = {
        let label = UILabel()
        label.text = "Remember Me"
        label.font = .smallText
        label.textColor = .textColor
        label.adjustsFontForContentSizeCategory = true
        return label
    }()
    
    public let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "email"
        textField.backgroundColor = .white
        textField.font = .body
        textField.autocorrectionType = .no
        textField.borderStyle = .roundedRect
        textField.autocapitalizationType = .none
        textField.adjustsFontForContentSizeCategory = true
        return textField
    }()
    
    public let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "password"
        textField.backgroundColor = .white
        textField.font = .body
        textField.autocorrectionType = .no
        textField.isSecureTextEntry = true
        textField.borderStyle = .roundedRect
        textField.autocapitalizationType = .none
        textField.adjustsFontForContentSizeCategory = true
        return textField
    }()
    
    public let checkbox: CheckBox = {
        let button = CheckBox()
        return button
    }()
    
    private func initializeConstraints() {
        guard let superview = self.superview else { return }
        
        masterStack.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
        emailTextField.snp.makeConstraints { make in
            make.size.equalTo(passwordTextField)
        }
        passwordTextField.snp.makeConstraints { make in
            make.width.equalTo(superview).multipliedBy(Constants.TextField.widthMulti)
            make.height.equalTo(superview).multipliedBy(Constants.TextField.heightMulti)
        }
        checkbox.snp.makeConstraints { make in
            make.height.equalTo(checkbox.snp.width)
            make.width.equalTo(superview).multipliedBy(Constants.CheckBox.sizeMulti)
        }
        
    }
}

