//
//  SelectedCell.swift
//  DelegateDemoSwift
//
//  Created by Verve Mac on 04/07/18.
//  Copyright © 2018 Verve Mac. All rights reserved.
//

import UIKit

class SelectedCell: UITableViewCell {

    @IBOutlet weak var label : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
