//
//  UIButton+.swift
//  Food recipe
//
//  Created by aleksandre on 29.05.22.
//

import UIKit


extension UIButton.Configuration
{
    
    
    /// Set a Dynamic title to self configuration
    public mutating func setDynamicTitle(_ title: String, font: UIFont) {
        let attContainer = AttributeContainer([NSAttributedString.Key.font: font, NSAttributedString.Key.foregroundColor: UIColor.black])
        let attString = AttributedString(title, attributes: attContainer)
        attributedTitle = attString
    }
    
}
