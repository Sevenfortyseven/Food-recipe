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
        
        let font = UIFont(name: "Bodoni 72 Oldstyle Bold", size: Constants.Font.titleSize)!
        let fontMetrics = UIFontMetrics(forTextStyle: .largeTitle)
        return fontMetrics.scaledFont(for: font)
    }
    
    public static var buttonLFont: UIFont {
        let font = UIFont(name: "Bodoni 72 Oldstyle Bold", size: Constants.Font.buttonLSize)!
        return font
    }
    
    public static var body: UIFont {
        return .preferredFont(forTextStyle: .body, compatibleWith: .init(legibilityWeight: .bold))
    }
    
    public static var smallText: UIFont {
        return .preferredFont(forTextStyle: .footnote, compatibleWith: .init(legibilityWeight: .bold))
    }
    
}

