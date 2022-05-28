//
//  UIFont+.swift
//  Food recipe
//
//  Created by aleksandre on 28.05.22.
//


import UIKit


extension UIFont
{
    
    public static var titleFont: UIFont {
        return .preferredFont(forTextStyle: .largeTitle, compatibleWith: .init(legibilityWeight: .bold))
    }
    
    public static var body: UIFont {
        return .preferredFont(forTextStyle: .body, compatibleWith: .init(legibilityWeight: .regular))
    }
    
    public static var smallText: UIFont {
        return .preferredFont(forTextStyle: .footnote, compatibleWith: .init(legibilityWeight: .regular))
    }
}

