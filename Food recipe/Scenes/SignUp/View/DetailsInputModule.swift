//
//  DetailsInputModule.swift
//  Food recipe
//
//  Created by aleksandre on 30.05.22.
//

import UIKit


class DetailsInputModule: UIView
{
    
    public var signUpAction: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    public func initialize() {
        addSubviews()
        initializeConstraints()
        addTargets()
    }
    
    private func addSubviews() {
        addSubview(Vstack)
        Vstack.addArrangedSubview(usernameLabel)
        Vstack.addArrangedSubview(usernameTextField)
        Vstack.addArrangedSubview(emailLabel)
        Vstack.addArrangedSubview(emailTextField)
        Vstack.addArrangedSubview(passwordLabel)
        Vstack.addArrangedSubview(passwordTextField)
        Vstack.addArrangedSubview(validatePasswordLabel)
        Vstack.addArrangedSubview(validatePasswordTextField)
        addSubview(signUpButton)
    }
    
    // MARK: -- Actions
    
    private func addTargets() {
        signUpButton.addTarget(self, action: #selector(signUpButtonPressed), for: .touchUpInside)
    }
    
    @objc private func signUpButtonPressed() {
        signUpAction?()
    }
    
    // MARK: -- UI Elements
    
    private var Vstack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fill
        stack.spacing = Constants.StackView.spacingM
        return stack
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Email"
        label.textColor = .textColor
        label.font = .body
        label.adjustsFontForContentSizeCategory = true
        return label
    }()
    private let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "Username"
        label.textColor = .textColor
        label.font = .body
        label.adjustsFontForContentSizeCategory = true
        return label
    }()
    private let passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.textColor = .textColor
        label.font = .body
        label.adjustsFontForContentSizeCategory = true
        return label
    }()
    private let validatePasswordLabel: UILabel = {
        let label = UILabel()
        label.text = "Confirm Password"
        label.textColor = .textColor
        label.font = .body
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
    
    public let usernameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "username"
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
        textField.borderStyle = .roundedRect
        textField.autocapitalizationType = .none
        textField.isSecureTextEntry = true
        textField.adjustsFontForContentSizeCategory = true
        return textField
    }()
    public let validatePasswordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Confirm Password"
        textField.backgroundColor = .white
        textField.font = .body
        textField.autocorrectionType = .no
        textField.borderStyle = .roundedRect
        textField.autocapitalizationType = .none
        textField.isSecureTextEntry = true
        textField.adjustsFontForContentSizeCategory = true
        return textField
    }()
    
    private let signUpButton: UIButton = {
        var config = UIButton.Configuration.filled()
        let button = UIButton(type: .system)
        config.setDynamicTitle("Sign Up", font: .buttonLFont)
        button.configuration = config
        button.tintColor = .secondaryColor
        button.tintAdjustmentMode = .normal
        return button
    }()

    
    private func initializeConstraints() {
        guard let superview = superview else { return }
        Vstack.snp.makeConstraints { make in
            make.top.leading.trailing.equalTo(self)
        }
        emailTextField.snp.makeConstraints { make in
            make.width.equalTo(superview).multipliedBy(Constants.TextField.widthMulti)
            make.height.equalTo(superview).multipliedBy(Constants.TextField.heightMulti)
        }
        passwordTextField.snp.makeConstraints { make in
            make.size.equalTo(emailTextField)
        }
        validatePasswordTextField.snp.makeConstraints { make in
            make.size.equalTo(emailTextField)
        }
        usernameTextField.snp.makeConstraints { make in
            make.size.equalTo(emailTextField)
        }
        signUpButton.snp.makeConstraints { make in
            make.height.equalTo(superview).multipliedBy(Constants.Button.buttonLHeightMulti)
            make.width.equalTo(superview).multipliedBy(Constants.Button.buttonLWidthMulti)
            make.top.equalTo(Vstack.snp.bottom).offset(Constants.modulePaddingL)
            make.centerX.equalTo(Vstack)
            make.bottom.equalTo(self)
        }
    }
}
