//
//  MenuOptionCell.swift
//  FirebaseDemo
//
//  Created by Suraj Kodre on 30/03/19.
//  Copyright © 2019 Suraj Kodre. All rights reserved.
//

import UIKit

class MenuOptionCell: UITableViewCell {
    
    @IBOutlet weak var menuIcon: UIImageView!
    @IBOutlet weak var menuTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
