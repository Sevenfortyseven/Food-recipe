//
//  SignUpVC.swift
//  Food recipe
//
//  Created by aleksandre on 30.05.22.
//

import UIKit

class SignUpViewController: UIViewController
{
    
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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateUI()
    }
    
    private func addSubviews() {
        view.addSubview(titleView)
        view.addSubview(detailsInputModule)
    }
 
    private func initializeModules() {
        detailsInputModule.initialize()
    }
    
    // MARK: -- UI Configuration --
    
    private func updateUI() {
        view.backgroundColor = .systemBrown
    }
    
    // MARK: -- UI Elements --
    
    private var titleView: UILabel = {
        let title = UILabel()
        title.text = "Create an account"
        title.textColor = .black
        title.font = .preferredFont(forTextStyle: .largeTitle, compatibleWith: .init(legibilityWeight: .bold))
        return title
    }()
}


extension SignUpViewController {
    
    // MARK: -- Constraints --
    
    private func initializeConstraints() {
        titleView.snp.makeConstraints { make in
            make.top.equalTo(view).offset(Constants.paddingTop)
            make.centerX.equalTo(view)
        }
        detailsInputModule.snp.makeConstraints { make in
            make.center.equalTo(view)
        }
    }
}
