//
//  BaseNavigationController.swift
//  Menu
//
//  Created by Suraj Kodre on 10/05/19.
//  Copyright © 2019 Suraj Kodre. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

	var menuHandler: MenuToggling?
	static var statusBarStyle: UIStatusBarStyle = .lightContent
	
	init(rootViewController: UIViewController, menuHandler: MenuToggling?) {
		super.init(rootViewController: rootViewController)
		self.menuHandler = menuHandler
		setUpNavigationElements(forViewController: rootViewController, menuHandler: menuHandler)
	}
	
	override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
		super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}
	
	override var preferredStatusBarStyle: UIStatusBarStyle {
		return BaseNavigationController.statusBarStyle
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
    }

	func setUpNavigationElements(forViewController: UIViewController, menuHandler: MenuToggling?) {
		self.menuHandler = menuHandler
		let barBut = addMenuNavigationItem()
		forViewController.navigationItem.leftBarButtonItem = barBut
	}
	
	func addMenuNavigationItem() -> UIBarButtonItem {
		let image = UIImage(named: "menu")
		let barButton = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(toggleMenu))
		return barButton
	}
	
	@objc private func toggleMenu() {
		menuHandler?.handelMenuToggle()
	}
}
