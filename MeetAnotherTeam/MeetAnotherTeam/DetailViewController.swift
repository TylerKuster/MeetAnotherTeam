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
    var scrollViewHeight: CGFloat = 375.0
    
    func configureView() {
        if !teammate.isEmpty {
            let theme = Theme.init()
            
            if let first = teammate["firstName"], let last = teammate["lastName"] {
                let name = "\(first) \(last)"
                
                profileView.nameLabel.attributedText = theme.styleProfileNameLabelWith(text: name)
            }
            
            if let avatar = teammate["avatar"] {
                teammateImageView.image = self.getImageFromURL(avatar)
            }
            
            if let title = teammate["title"] {
                profileView.positionLabel.attributedText = theme.styleProfilePositionLabelWith(text: title)
            }
            
            if let bio = teammate["bio"] {
                profileView.bioTextView.attributedText = theme.styleProfileBioTextViewWith(text: bio)
            }
            
            let delayInSeconds = 1.0 // 1
            DispatchQueue.main.asyncAfter(deadline: .now() + delayInSeconds) { // 2
                self.scrollView.contentSize = CGSize.init(width: UIScreen.main.bounds.size.width, height: self.profileView.bioTextView.frame.size.height + 402.0)
                self.scrollView.setNeedsLayout()
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }

    var detailItem: NSDate? {
        didSet {
            configureView()
        }
    }

    func getImageFromURL(_ fileURL: String) -> UIImage {
        let url = NSURL(string: fileURL)!
        var image = UIImage()
        
        do {
            image = try UIImage(data: Data(contentsOf: url as URL))!
        } catch {
            print("Image Failed")
        }
        
        return image
    }
}

