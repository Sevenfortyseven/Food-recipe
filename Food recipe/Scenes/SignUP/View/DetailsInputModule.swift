//
//  DetailsInputModule.swift
//  Food recipe
//
//  Created by aleksandre on 30.05.22.
//

import UIKit


class DetailsInputModule: UIView
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
        addTargets()
    }
    
    private func addSubviews() {
        addSubview(Vstack)
        Vstack.addArrangedSubview(emailLabel)
        Vstack.addArrangedSubview(emailTextField)
        Vstack.addArrangedSubview(passwordLabel)
        Vstack.addArrangedSubview(passwordTextField)
        Vstack.addArrangedSubview(validatePasswordLabel)
        Vstack.addArrangedSubview(validatePasswordTextField)
    }
    
    private func addTargets() {
        
    }
    
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
    public let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "password"
        textField.backgroundColor = .white
        textField.font = .body
        textField.autocorrectionType = .no
        textField.borderStyle = .roundedRect
        textField.autocapitalizationType = .none
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
        textField.adjustsFontForContentSizeCategory = true
        return textField
    }()
    
    private func initializeConstraints() {
        guard let superview = superview else { return }
        Vstack.snp.makeConstraints { make in
            make.edges.equalTo(self)
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
    }
}
