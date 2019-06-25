//
//  SettingsTableViewCell.swift
//  Menu
//
//  Created by Suraj Kodre on 22/05/19.
//  Copyright © 2019 Suraj Kodre. All rights reserved.
//

import UIKit

protocol tableCellButtonClick {
	func cellButtonClicked(index: Int, title: String)
}

class SettingsTableViewCell: UITableViewCell {

	@IBOutlet weak var title: UILabel!
	@IBOutlet weak var txtField: UITextField!
	
	var delegate: tableCellButtonClick?
	var index: Int?
	
	
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
	
    
	@IBAction func btnClick(_ sender: Any) {
		if !(txtField.text?.isEmpty)! {
			delegate?.cellButtonClicked(index: index!, title: txtField.text!)
		}
	}
}
