//
//  CustomTableViewCell.swift
//  UITableViewDemoUsingSwift
//
//  Created by Hardik Trivedi on 26/05/2016.
//  Copyright © 2016 TheiHartFirm. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell
{

    @IBOutlet weak var lblColorName: UILabel!
    @IBOutlet weak var vwColor: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
