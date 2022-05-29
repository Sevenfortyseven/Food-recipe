//
//  InitialVC.swift
//  Food recipe
//
//  Created by aleksandre on 28.05.22.
//

import UIKit
import SnapKit

final class InitialViewController: UIViewController
{
    
    public var viewModel: InitialViewModel
    
    private lazy var loginModule = LoginInputModule()
    private lazy var signInModule = SignInModule()
    private lazy var signUpModule = SignUpModule()
    // MARK: -- Initialization --
    
    
    init(viewModel: InitialViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    deinit {
        print("\(self) VC was deinitialized")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        setupModules()
        initializeConstraints()
        addActions()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateUI()
    }
    
    private func addSubviews() {
        view.addSubview(backgroundView)
        view.addSubview(welcomeTitle)
        view.addSubview(loginModule)
        view.addSubview(signInModule)
        view.addSubview(signUpModule)
 
    }
    
    private func setupModules() {
        loginModule.initialize()
        signInModule.initialize()
        signUpModule.initialize()
    }
    
    private func updateUI() {
    
    }
    
    private let backgroundView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: ImageStore.initialBackground.rawValue)
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    private let welcomeTitle: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = Constants.Title.welcomeTitle
        label.font = .titleFont
        label.textColor = .textColor
        label.adjustsFontForContentSizeCategory = true
        return label
    }()
    
    // MARK: -- Action --
    
    private func addActions() {
        loginModule.checkbox.checkboxAction = { [unowned self] in
//            let vm = HomeViewModel()
//            let targetVC = HomeViewController(viewModel: vm)
//            navigationController?.setViewControllers([targetVC], animated: true)
        }
    }
}



extension InitialViewController
{
    // MARK: -- Constraints --
    
    private func initializeConstraints() {
        backgroundView.snp.makeConstraints { make in
            make.edges.equalTo(view)

        }
        welcomeTitle.snp.makeConstraints { make in
            make.centerY.equalTo(view).multipliedBy(Constants.Title.YoffsetMulti)
            make.centerX.equalTo(view)
        }
        loginModule.snp.makeConstraints { make in
            make.center.equalTo(view)
        }
        signInModule.snp.makeConstraints { make in
            make.top.equalTo(loginModule.snp.bottom).offset(Constants.modulePadding)
            make.centerX.equalTo(view)
        }
        signUpModule.snp.makeConstraints { make in
            make.bottom.equalTo(view.snp.bottomMargin)
//            make.horizontalEdges.equalTo(signInModule)
            make.centerX.equalTo(view)
        }
    }
    
    
}
