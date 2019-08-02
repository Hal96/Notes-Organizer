//
//  TableViewCellNotes.swift
//  NotasFisica
//
//  Created by Hal Perry Cardenas on 4/14/18.
//  Copyright © 2018 Hal Perry Cardenas. All rights reserved.
//

import UIKit

class TableViewCellNotes: UITableViewCell {

    @IBOutlet weak var lbTitleNotes: UILabel!
    @IBOutlet weak var lbDescriptionNotes: UILabel!
    @IBOutlet weak var lbDateNotes: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
