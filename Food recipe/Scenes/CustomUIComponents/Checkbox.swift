//
//  Checkbox.swift
//  Food recipe
//
//  Created by aleksandre on 28.05.22.
//

import UIKit


// Custom button with checkbox implementation
class CheckBox: UIButton
{
    public var checkboxAction: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        tintColor = .black
        backgroundColor = .white
        addTarget(self, action: #selector(checkboxPressed), for: .touchUpInside)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        roundCorners(corners: .allCorners, radius: .small)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("\(self) CheckBox deinitialized")
    }
    
    private(set) var isChecked: Bool = false {
        didSet {
            if isChecked {
                setImage(UIImage(systemName: "checkmark"), for: .normal)
            } else {
                setImage(nil, for: .normal)
            }
        }
    }
    
    @objc
    private func checkboxPressed() {
        isChecked = !isChecked
        checkboxAction?()
    }
    
    
    
}
