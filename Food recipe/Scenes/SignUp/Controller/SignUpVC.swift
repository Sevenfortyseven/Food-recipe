//
//  SignUpVC.swift
//  Food recipe
//
//  Created by aleksandre on 30.05.22.
//

import UIKit

public protocol SignUpViewControllerDelegate: AnyObject
{

}

class SignUpViewController: UIViewController
{
    public weak var delegate: SignUpViewControllerDelegate?
    
    public var viewModel: SignUpViewModel
    
    private lazy var detailsInputModule = DetailsInputModule()
    
    // MARK: -- Initialization --
    
    init(viewModel: SignUpViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)

    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        initializeConstraints()
        initializeModules()
        updateUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }
    
    private func addSubviews() {
        view.addSubview(titleView)
        view.addSubview(detailsInputModule)
    }
 
    private func initializeModules() {
        detailsInputModule.initialize()
        addActions()
    }
    
    // MARK: -- UI Configuration --
    
    private func updateUI() {
        view.backgroundColor = .systemBrown
    }
    
    // MARK: -- Actions
    
    private func addActions() {
        detailsInputModule.signUpAction = { [unowned self] in
            viewModel.signUpUser(detailsInputModule.usernameTextField.text!,
                               detailsInputModule.emailTextField.text!,
                               detailsInputModule.passwordTextField.text!,
                               detailsInputModule.validatePasswordTextField.text!)
        }
   
    }
    
    
    // MARK: -- UI Elements --
    
    private var titleView: UILabel = {
        let title = UILabel()
        title.text = "Create an account"
        title.textColor = .primaryColor
        title.font = .titleFont
        return title
    }()
    
}

    


extension SignUpViewController {
    
    // MARK: -- Constraints --
    
    private func initializeConstraints() {
        titleView.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.centerY.equalTo(view).multipliedBy(Constants.Title.YoffsetMultiTop)
        }
        detailsInputModule.snp.makeConstraints { make in
            make.center.equalTo(view)
        }

    }
}
