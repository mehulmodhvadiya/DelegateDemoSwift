//
//  TableViewCell.swift
//  DelegateDemoSwift
//
//  Created by Verve Mac on 11/06/18.
//  Copyright © 2018 Verve Mac. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var labelText : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
