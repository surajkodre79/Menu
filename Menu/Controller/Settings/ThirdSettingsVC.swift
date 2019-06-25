//
//  ThirdSettingsVC.swift
//  Menu
//
//  Created by Suraj Kodre on 15/05/19.
//  Copyright © 2019 Suraj Kodre. All rights reserved.
//

import UIKit

class ThirdSettingsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
	
	@IBAction func popFirstVC(_ sender: Any) {
		let popvc = self.navigationController?.viewControllers.filter({ $0.isKind(of: FirstSettingsVC.self) })
		if !(popvc?.isEmpty ?? true) {
			self.navigationController?.popToViewController(popvc![0], animated: true)
		}
	}
	
}
