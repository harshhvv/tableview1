//
//  ViewController.swift
//  table 4
//
//  Created by Harsh  on 05/05/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let titles = ["welcome1", "welcome2", "welcome3"]
    let names = ["harsh", "vardhan", "bro pls im sleepy"]
    let pics = [UIImage(named: "1.jpg"), UIImage(named: "2.png"), UIImage(named: "3.png")]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "detailedImage", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.labelCell.text = names[indexPath.row]
        //b = cell.labelCell.text!
        cell.imageCell.image = pics[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "ok"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is detailsController{
            let vc = segue.destination as! detailsController
            let indexPaths = self.tableView!.indexPathsForSelectedRows!
            let indexPath = indexPaths[0] as NSIndexPath
            vc.image1 = self.pics[indexPath.row]
            vc.caption = self.names[indexPath.row]
        }
    }
    
}

