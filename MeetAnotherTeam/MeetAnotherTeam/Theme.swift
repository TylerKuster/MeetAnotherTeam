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
        
        attributedString.addAttribute(NSAttributedStringKey.font, value: UIFont(name: "Lato-Regular", size: 17.0)!, range:NSRange.init(text)!)
        
        attributedString.addAttribute(NSAttributedStringKey.foregroundColor, value: themeGrey(), range: NSRange.init(text)!)
        
        attributedString.addAttribute(NSAttributedStringKey.kern, value:-0.1, range: NSRange.init(text)!)
        
        return attributedString
    }
    
    func styleCellPositionLabelWith(text:String) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString.init(string: text)
        
        attributedString.addAttribute(NSAttributedStringKey.font, value: UIFont(name: "Lato-Regular", size: 14.0)!, range:NSRange.init(text)!)
        
        attributedString.addAttribute(NSAttributedStringKey.foregroundColor, value: themeGrey(), range: NSRange.init(text)!)
        
        attributedString.addAttribute(NSAttributedStringKey.kern, value:-0.2, range: NSRange.init(text)!)
        
        return attributedString
    }
    
    func styleProfileNameLabelWith(text:String) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString.init(string: text)
        
        attributedString.addAttribute(NSAttributedStringKey.font, value: UIFont(name: "Lato-Bold", size: 27.0)!, range:NSRange.init(text)!)
        
        attributedString.addAttribute(NSAttributedStringKey.foregroundColor, value: themeGrey(), range: NSRange.init(text)!)
        
        attributedString.addAttribute(NSAttributedStringKey.kern, value:-0.5, range: NSRange.init(text)!)
        
        return attributedString
    }
    
    func styleProfilePositionLabelWith(text:String) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString.init(string: text)
        
        attributedString.addAttribute(NSAttributedStringKey.font, value: UIFont(name: "Lato-Semibold", size: 20.0)!, range:NSRange.init(text)!)
        
        attributedString.addAttribute(NSAttributedStringKey.foregroundColor, value: themeGrey(), range: NSRange.init(text)!)
        
        attributedString.addAttribute(NSAttributedStringKey.kern, value:-0.5, range: NSRange.init(text)!)
        
        return attributedString
    }
    
    func styleProfileBioTextViewWith(text:String) -> NSMutableAttributedString {
        let paragraphStyle = NSMutableParagraphStyle.init()
        paragraphStyle.alignment = NSTextAlignment.justified
        
        let attributedString = NSMutableAttributedString.init(string: text)
        
        attributedString.addAttribute(NSAttributedStringKey.font, value: UIFont(name: "Lato-Regular", size: 27.0)!, range:NSRange.init(text)!)
        
        attributedString.addAttribute(NSAttributedStringKey.foregroundColor, value: themeGrey(), range: NSRange.init(text)!)
        
        attributedString.addAttribute(NSAttributedStringKey.paragraphStyle, value: paragraphStyle, range: NSRange.init(text)!)
        
        attributedString.addAttribute(NSAttributedStringKey.kern, value:-0.56, range: NSRange.init(text)!)
        
        attributedString.addAttribute(NSAttributedStringKey.baselineOffset, value: 0, range: NSRange.init(text)!)
        
        return attributedString
    }
}