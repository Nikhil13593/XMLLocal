//
//  TableViewCell.swift
//  XMLLocal
//
//  Created by Nikhil Patil on 10/04/19.
//  Copyright © 2019 Nikhil Patil. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var actorsName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
