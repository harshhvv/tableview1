//
//  ViewController.swift
//  table 4
//
//  Created by Harsh  on 05/05/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let names = ["harsh", "vardhan", "bro pls im sleepy"]
    let pics = [UIImage(named: "1.jpg"), UIImage(named: "2.png"), UIImage(named: "3.png")]
    
//    var a:UIImage? = nil
    var b = ""
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
       // cell.labelCell.text = b
        cell.imageCell.image = pics[indexPath.row]
//        cell.imageCell.image = a
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Welcome! "
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.destination is detailsController{
//            let vc = segue.destination as! detailsController
//            vc.label.text = b
//            vc.image.image = a
       }
   }
    
}

