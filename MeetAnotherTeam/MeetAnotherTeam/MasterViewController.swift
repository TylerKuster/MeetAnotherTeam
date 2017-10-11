//
//  MasterViewController.swift
//  MeetAnotherTeam
//
//  Created by Tyler Kuster on 10/5/17.
//  Copyright © 2017 12 Triangles. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var detailViewController: DetailViewController? = nil
    var theTeam = [[ : ]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let split = splitViewController {
            let controllers = split.viewControllers
            detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
        }
        
        tableView.register(UINib.init(nibName: "TeammateTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
        
        if let path = Bundle.main.path(forResource:"catTeam", ofType: "json")
        {
            let data = NSData(contentsOfFile:path)
            if let usableData = data {
                do {
                    theTeam = try JSONSerialization.jsonObject(with: usableData as Data, options: .mutableContainers)  as! [Dictionary]
                } catch {
                    print("JSON Processing Failed")
                }
            }
        }
    }

    // MARK: - Segues

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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let selectedTeammate = theTeam[indexPath.row]
                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
                controller.teammate = selectedTeammate as! [String : String]
                
                if let name = theTeam[indexPath.row]["firstName"] {
                    controller.navigationItem.title = "\(name)"
                }
                
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return theTeam.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TeammateTableViewCell
        let theme = Theme.init()

        if let first = theTeam[indexPath.row]["firstName"], let last = theTeam[indexPath.row]["lastName"] {
            cell.teammateNameLabel.attributedText = theme.styleCellNameLabelWith(text: "\(first) \(last)")
        }
        
        if let avatar = theTeam[indexPath.row]["avatar"] {
            cell.teammateImageView.image = self.getImageFromURL("\(avatar)")
        }
        
        if let title = theTeam[indexPath.row]["title"] {
            cell.teammatePositionLabel.attributedText = theme.styleCellPositionLabelWith(text: "\(title)")
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetail", sender: self)
    }
}
