//
//  UIView+.swift
//  Food recipe
//
//  Created by aleksandre on 28.05.22.
//

import UIKit


extension UIView
{
    /// Add shadow
    public func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offSet
        layer.shadowRadius = radius
        
        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
    public func dropShadow(color: UIColor) {
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: -1, height: 1)
        layer.shadowRadius = 1
        
        layer .shadowPath = UIBezierPath(rect: bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
        
    }
    
    public enum CurveRadius {
        case large
        case small
    }
    
    
    /// Make rect corners round
    public func roundCorners(corners: UIRectCorner, radius: CurveRadius) {
        var r = CGFloat()
        
        switch radius {
        case .large:
            r = frame.width / 30
        case .small:
            r = frame .width / 20
        }
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: r, height: r))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
        
    }
    
}
