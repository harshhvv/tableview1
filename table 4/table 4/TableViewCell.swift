//
//  TableViewCell.swift
//  table 4
//
//  Created by Harsh  on 05/05/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var labelCell: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
