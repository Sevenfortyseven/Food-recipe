//
//  FoodCollectionCell.swift
//  Food recipe
//
//  Created by aleksandre on 22.05.22.
//

import UIKit
import SnapKit

class FoodCollectionCell: UICollectionViewCell
{
    private(set) static var identifier = String(describing: FoodCollectionCell.self)
    
    // MARK: -- Initialization --
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .red
        addSubviews()
        initializeConstraints()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    private func addSubviews() {
        self.contentView.addSubview(nameLabel)
    }
    
    // MARK: -- ContentView Elements --
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "Bread"
        return label
    }()
    
}


extension FoodCollectionCell
{
    private func initializeConstraints() {
        nameLabel.snp.makeConstraints { make in
            make.center.equalTo(contentView)
        }
    }
    
}
