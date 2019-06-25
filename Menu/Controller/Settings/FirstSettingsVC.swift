//
//  FirstSettingsVC.swift
//  Menu
//
//  Created by Suraj Kodre on 15/05/19.
//  Copyright © 2019 Suraj Kodre. All rights reserved.
//

import UIKit

class FirstSettingsVC: UIViewController, UITextFieldDelegate {
	@IBOutlet weak var emailTxtField: UITextField!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		if (UserDefaults.standard.string(forKey: "email") != nil) {
			emailTxtField.text = UserDefaults.standard.string(forKey: "email")
		}
    }

	@IBAction func textDidChanged(_ sender: UITextField) {
		if !(sender.text?.isEmpty ?? true) {
			UserDefaults.standard.set(sender.text, forKey: "email")
		}
	}
	
}
