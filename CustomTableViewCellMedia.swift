//
//  CustomTableViewCellMedia.swift
//  NotasFisica
//
//  Created by Hal Perry Cardenas on 4/7/18.
//  Copyright © 2018 Hal Perry Cardenas. All rights reserved.
//

import UIKit

class CustomTableViewCellMedia: UITableViewCell {

    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var ivMedia: UIImageView!
    @IBOutlet weak var lbDate: UILabel!
    @IBOutlet weak var btView: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
