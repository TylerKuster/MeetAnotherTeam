//
//  TeammateTableViewCell.swift
//  MeetAnotherTeam
//
//  Created by Tyler Kuster on 10/9/17.
//  Copyright © 2017 12 Triangles. All rights reserved.
//

import UIKit

class TeammateTableViewCell: UITableViewCell {

    @IBOutlet weak var teammateImageView: UIImageView!
    
    @IBOutlet weak var teammateNameLabel: UILabel!
    @IBOutlet weak var teammatePositionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        teammateImageView.layer.cornerRadius = teammateImageView.bounds.size.width / 2.0
        
        teammateImageView.layer.borderWidth = 3.0
        teammateImageView.layer.borderColor = UIColor(red:0.15, green:0.21, blue:0.30, alpha:1.0).cgColor
    }
}
