//
//  MenuNavigationHelper.swift
//  Menu
//
//  Created by Suraj Kodre on 10/05/19.
//  Copyright © 2019 Suraj Kodre. All rights reserved.
//

import UIKit

class MenuNavigationHelper {
	static let shared = MenuNavigationHelper()
	var currentPresentedObject: MenuOption?
	
	@discardableResult func show(menuObj: MenuOption) -> Bool {
		currentPresentedObject = menuObj
		return getViewControllerFromNavigationObject(menuObject: menuObj)
	}
	
	func getViewControllerFromNavigationObject(menuObject: MenuOption) -> Bool {
		let navObject = MenuStoryboardNavigationMapper.shared.navigateObject(fromMenuObject: menuObject)
		if let vc = navObject.instantiateViewController() {
			return loadViewController(viewController: vc)
		}
		return false
	}
	
	func loadViewController(viewController: UIViewController) -> Bool {
		guard let window: UIWindow = UIApplication.shared.delegate?.window ?? nil else { return false }
		
		guard let menuConatiner = window.rootViewController as? MenuContainer else { return false }
		
		guard let containerViewController = menuConatiner.centerController else { return false }
		
		if let navigationController = viewController as? BaseNavigationController, let vc = navigationController.topViewController {
			navigationController.setUpNavigationElements(forViewController: vc, menuHandler: menuConatiner)
			containerViewController.showInContainer(viewController: navigationController)
		} else {
			let navigationController = BaseNavigationController(rootViewController: viewController, menuHandler: menuConatiner)
			containerViewController.showInContainer(viewController: navigationController)
		}
		return true
	}
}
