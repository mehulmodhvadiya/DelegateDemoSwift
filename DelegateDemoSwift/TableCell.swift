//
//  TableCell.swift
//  DelegateDemoSwift
//
//  Created by Verve Mac on 13/11/18.
//  Copyright © 2018 Verve Mac. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
    
    @IBOutlet weak var lableText: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
