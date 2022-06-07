//
//  SignUpVC.swift
//  Food recipe
//
//  Created by aleksandre on 30.05.22.
//

import UIKit

public protocol SignUpViewControllerDelegate: AnyObject
{
    func onSignUpSuccess()
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
    
    deinit {
        print("SignUpVC deinitialized")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        initializeConstraints()
        initializeModules()
        updateUI()
        startListening()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }
    
    private func addSubviews() {
        view.addSubview(titleView)
        view.addSubview(detailsInputModule)
    }
    
    // Bind View to VM
    private func startListening() {
        viewModel.shortUsername.bind { [unowned self] shortUsername in
            if shortUsername {
                showAlert(.shortUsername)
            }
        }
        viewModel.weakPassword.bind { [unowned self] weakPassword in
            if weakPassword {
                showAlert(.weakPassword)
            }
        }
        viewModel.emptyFields.bind { [unowned self] emptyFields in
            if emptyFields {
                showAlert(.emptyFields)
            }
        }
        viewModel.invalidEmail.bind { [unowned self] invalidEmail in
            if invalidEmail {
                showAlert(.invalidEmail)
            }
        }
        viewModel.passwordMissmatch.bind { [unowned self] passwordMissmatch in
            if passwordMissmatch {
                showAlert(.passwordMismatch)
            }
        }
        viewModel.signUpError.bind { [unowned self] signUpError in
            if signUpError {
                showAlert(.signUpError)
            }
        }
        viewModel.signUpSuccess.bind { [unowned self] success in
            if success {
                showAlert(.signUpSuccess, alertHandler:  { _ in
                    self.delegate?.onSignUpSuccess()
                })
            }
        }
        
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
