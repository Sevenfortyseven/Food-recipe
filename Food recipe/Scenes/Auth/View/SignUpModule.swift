//
//  SignUpModule.swift
//  Food recipe
//
//  Created by aleksandre on 29.05.22.
//

import UIKit
import SnapKit

class SignUpModule: UIView
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
        addSubview(Hstack)
        Hstack.addArrangedSubview(signUpLabel)
        Hstack.addArrangedSubview(signUpButton)
    }
    
    private let Hstack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fill
        stack.spacing = Constants.StackView.spacingS
        return stack
    }()
    
    private let signUpLabel: UILabel = {
        let label = UILabel()
        label.textColor = .secondaryTextColor
        label.font = .preferredFont(forTextStyle: .subheadline)
        label.text = "Don't have an account?"
        label.adjustsFontForContentSizeCategory = true
        return label
    }()
    
    public let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.titleLabel?.textColor = .secondaryColor
        button.setTitle("Sign Up", for: .normal)
        button.tintColor = .secondaryColor
        return button
    }()
    
    private func addTargets() {
        signUpButton.addTarget(self, action: #selector(signUpButtonPressed), for: .touchUpInside)
    }
    
    @objc
    private func signUpButtonPressed() {
        signUpAction?()
    }
    
    private func initializeConstraints() {
        Hstack.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
    }
}
