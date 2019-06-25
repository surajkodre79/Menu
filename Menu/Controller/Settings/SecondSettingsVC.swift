//
//  SecondSettingsVC.swift
//  Menu
//
//  Created by Suraj Kodre on 15/05/19.
//  Copyright © 2019 Suraj Kodre. All rights reserved.
//

import UIKit

class SecondSettingsVC: UIViewController {

	@IBOutlet weak var mobileTxtField: UITextField!

	override func viewDidLoad() {
        super.viewDidLoad()

		if !(mobileTxtField.text?.isEmpty ?? true) {
			UserDefaults.standard.set(mobileTxtField.text, forKey: "mobile")
		}
		
		if (UserDefaults.standard.value(forKey: "mobile") != nil) {
			mobileTxtField.text = UserDefaults.standard.value(forKey: "mobile") as? String
		}
    }

}
