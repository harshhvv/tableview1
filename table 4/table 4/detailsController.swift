//
//  detailsController.swift
//  table 4
//
//  Created by Harsh  on 06/05/21.
//

import UIKit

class detailsController: UIViewController {
    var image1:UIImage?
    var caption:String?
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var image: UIImageView!
    

    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        label.text = caption
        image.image = image1
        
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
