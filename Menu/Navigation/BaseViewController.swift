//
//  BaseNavigationController.swift
//  FirebaseDemo
//
//  Created by Suraj Kodre on 17/04/19.
//  Copyright © 2019 Suraj Kodre. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

	var menuDelegate: MenuToggling?
	
    override func viewDidLoad() {
        super.viewDidLoad()
		self.navigationController?.navigationBar.applyTransparentStyle()
    }
}

extension UINavigationBar {
	
	func applyTransparentStyle () {
		self.setBackgroundImage(UIImage(), for: .default)
		self.shadowImage = UIImage()
		self.isTranslucent = true
		self.backItem?.title = ""
		let barButtonItemAppearance = UIBarButtonItem.appearance()
		barButtonItemAppearance.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.clear], for: .normal)
	}
}
