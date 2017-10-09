//
//  TeammateProfileView.swift
//  MeetAnotherTeam
//
//  Created by Tyler Kuster on 10/9/17.
//  Copyright © 2017 12 Triangles. All rights reserved.
//

import UIKit

class TeammateProfileView: UIView {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    
    @IBOutlet weak var bioTextView: UITextView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.backgroundColor = UIColor.clear
    }
    
    override func draw(_ rect: CGRect) {
        let whiteShape = UIBezierPath.init()
        whiteShape.move(to: CGPoint.init(x: 0.0, y: 0.5))
        whiteShape.addLine(to: CGPoint.init(x: rect.size.width, y: 88.5))
        whiteShape.addLine(to: CGPoint.init(x: rect.size.width, y: rect.size.height))
        whiteShape.addLine(to: CGPoint.init(x: 0.0, y: rect.size.height))
        
        UIColor.white.set()
        
        whiteShape.fill()
        
        let blueShape = UIBezierPath.init()
        blueShape.move(to: CGPoint.init(x: 0.0, y: 0.0))
        blueShape.addLine(to: CGPoint.init(x: rect.size.width, y: 88.0))
        blueShape.addLine(to: CGPoint.init(x: rect.size.width, y: 94.0))
        blueShape.addLine(to: CGPoint.init(x: 0.0, y: 6.0))
        
        UIColor(red:0.15, green:0.21, blue:0.30, alpha:1.0).set()
        
        blueShape.fill()
    }
}
