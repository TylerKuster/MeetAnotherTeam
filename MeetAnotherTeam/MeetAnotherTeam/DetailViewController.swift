//
//  DetailViewController.swift
//  MeetAnotherTeam
//
//  Created by Tyler Kuster on 10/5/17.
//  Copyright © 2017 12 Triangles. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var teammateImageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var profileView: TeammateProfileView!

    var teammate = [String: String]()
    
    func configureView() {
        if !teammate.isEmpty {
            let theme = Theme.init()
            
            if let first = teammate["firstName"], let last = teammate["lastName"] {
                let name = "\(first) \(last)"
                
                profileView.nameLabel.attributedText = theme.styleProfileNameLabelWith(text: name)
            }
            
            if let avatar = teammate["avatar"] {
                // TODO: Add AFNetworking Pod and update this
            }
            
            if let title = teammate["title"] {
                profileView.positionLabel.attributedText = theme.styleProfilePositionLabelWith(text: title)
            }
            
            if let bio = teammate["bio"] {
                profileView.bioTextView.attributedText = theme.styleProfileBioTextViewWith(text: bio)
            }
            
            DispatchQueue.global(qos: .userInitiated).async {
                self.scrollView.contentSize = CGSize.init(width: UIScreen.main.bounds.size.width, height: self.profileView.bioTextView.frame.size.height + 402.0)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: NSDate? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

