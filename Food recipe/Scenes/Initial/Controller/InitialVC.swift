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
    
    // MARK: -- Initialization --
    
    
    init(viewModel: InitialViewModel) {
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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateUI()
    }
    
    private func addSubviews() {
        view.addSubview(backgroundView)
        view.addSubview(welcomeTitle)
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
        label.text = Constants.Title.welcomeTitle
        label.font = .titleFont
        label.textColor = .textColor
        return label
    }()
    
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
    }
    
    
}
