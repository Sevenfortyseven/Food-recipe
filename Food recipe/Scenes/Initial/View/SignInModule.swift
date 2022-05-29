//
//  SignOptionsModule.swift
//  Food recipe
//
//  Created by aleksandre on 29.05.22.
//

import UIKit
import SnapKit

class SignInModule: UIView
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
        addSubview(Vstack)
        Vstack.addArrangedSubview(signInButton)
        Vstack.addArrangedSubview(resetPasswordButton)
    }
    
    public let signInButton: UIButton = {
        var config = UIButton.Configuration.filled()
        let button = UIButton()
        config.setDynamicTitle("Sign In", font: .buttonLFont)
        button.configuration = config
        button.tintColor = .secondaryColor
        return button
    }()
    
    public let resetPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Forgot Your Password?", for: .normal)
        button.setTitleColor(UIColor.secondaryTextColor, for: .normal)
        return button
    }()
    
    private let Vstack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fill
        stack.spacing = Constants.StackView.spacingM
        stack.alignment = .fill
        return stack
    }()
    
    private func initializeConstraints() {
        guard let superview = superview else { return }
        
        signInButton.snp.makeConstraints { make in
            make.width.equalTo(superview).multipliedBy(Constants.Button.buttonLWidthMulti)
            make.height.equalTo(superview).multipliedBy(Constants.Button.buttonLHeightMulti)
        }
        Vstack.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
    }
}
