//
//  Theme.swift
//  MeetAnotherTeam
//
//  Created by Tyler Kuster on 10/9/17.
//  Copyright © 2017 12 Triangles. All rights reserved.
//

import UIKit

class Theme: NSObject {
    
    func themeGrey() -> UIColor {
        return UIColor(red:0.392, green:0.392, blue:0.392, alpha:1.0)
    }
    
    func styleCellNameLabelWith(text:String) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString.init(string: text)
        let nsText = text as NSString
        let textRange = NSMakeRange(0, nsText.length)
        
        attributedString.addAttributes([NSAttributedString.Key.font : UIFont(name: "Lato-Regular", size: 17.0)!,
                                        NSAttributedString.Key.foregroundColor : themeGrey(),
                                        NSAttributedString.Key.kern : -0.1], range: textRange)
        
        return attributedString
    }
    
    func styleCellPositionLabelWith(text:String) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString.init(string: text)
        let nsText = text as NSString
        let textRange = NSMakeRange(0, nsText.length)
        
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "Lato-Regular", size: 14.0)!, range:textRange)
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: themeGrey(), range:textRange)
        attributedString.addAttribute(NSAttributedString.Key.kern, value:-0.2, range:textRange)
        
        return attributedString
    }
    
    func styleProfileNameLabelWith(text:String) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString.init(string: text)
        let nsText = text as NSString
        let textRange = NSMakeRange(0, nsText.length)
        
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "Lato-Bold", size: 27.0)!, range:textRange)
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: themeGrey(), range:textRange)
        attributedString.addAttribute(NSAttributedString.Key.kern, value:-0.5, range:textRange)
        
        return attributedString
    }
    
    func styleProfilePositionLabelWith(text:String) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString.init(string: text)
        let nsText = text as NSString
        let textRange = NSMakeRange(0, nsText.length)
        
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "Lato-Semibold", size: 20.0)!, range:textRange)
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: themeGrey(), range:textRange)
        attributedString.addAttribute(NSAttributedString.Key.kern, value:-0.5, range:textRange)
        
        return attributedString
    }
    
    func styleProfileBioTextViewWith(text:String) -> NSMutableAttributedString {
        let paragraphStyle = NSMutableParagraphStyle.init()
        paragraphStyle.alignment = NSTextAlignment.justified
        
        let attributedString = NSMutableAttributedString.init(string: text)
        let nsText = text as NSString
        let textRange = NSMakeRange(0, nsText.length)
        
        attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "Lato-Regular", size: 18.0)!, range:textRange)
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: themeGrey(), range:textRange)
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range:textRange)
        attributedString.addAttribute(NSAttributedString.Key.kern, value:-0.56, range:textRange)
        attributedString.addAttribute(NSAttributedString.Key.baselineOffset, value: 0, range:textRange)
        
        return attributedString
    }
}
