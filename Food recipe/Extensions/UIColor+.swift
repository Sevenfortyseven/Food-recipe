//
//  UIColor+.swift
//  Food recipe
//
//  Created by aleksandre on 28.05.22.
//

import UIKit


extension UIColor
{
    // MARK: -- Custom Colors --
    
    public static var primaryColor: UIColor {
        return self.init(named: "primary_color")!
    }
    
    public static var secondaryColor: UIColor {
        return self.init(named: "secondary_color")!
    }
    
    public static var textColor: UIColor {
        return self.init(named: "text_color")!
    }
    
    public static var textColorDark: UIColor {
        return self.init(named: "text_color_dark")!
    }
    
    public static var secondaryTextColor: UIColor {
        return self.init(named: "secondary_text_color")!
    }
    
   
}
