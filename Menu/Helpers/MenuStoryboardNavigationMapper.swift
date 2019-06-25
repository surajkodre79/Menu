//
//  MenuStoryboardNavigationMapper.swift
//  Menu
//
//  Created by Suraj Kodre on 10/05/19.
//  Copyright © 2019 Suraj Kodre. All rights reserved.
//

import UIKit

enum MenuStoryboardType {
	case initialStoryBoardType
	case viewControllerBased
}

class MenuNavigationObject {
	let menuRootType: MenuStoryboardType
	let storyBoardName: String?
	let viewControllerIdentifier: String?
	let menuType: MenuOption
	
	init(menuRootType: MenuStoryboardType, storyBoardName: String?, viewControllerIdentifier: String?, menuType: MenuOption) {
		self.menuRootType = menuRootType
		self.storyBoardName = storyBoardName
		self.viewControllerIdentifier = viewControllerIdentifier
		self.menuType = menuType
	}
	
	func instantiateViewController() -> UIViewController? {
		switch menuRootType {
		case .initialStoryBoardType:
			if let storyBoard = storyBoardName {
				let storyBoard = UIStoryboard(name: storyBoard, bundle: nil)
				return storyBoard.instantiateInitialViewController()
			}
		case .viewControllerBased:
			if let storyBoard = storyBoardName, let viewControllerId = viewControllerIdentifier {
				let storyBoard = UIStoryboard(name: storyBoard, bundle: nil)
				return storyBoard.instantiateViewController(withIdentifier: viewControllerId)
			}
		}
		return nil
	}
}

class MenuStoryboardNavigationMapper {
	static let shared = MenuStoryboardNavigationMapper()
	
	func navigateObject(fromMenuObject menuobject: MenuOption) -> MenuNavigationObject {
		switch menuobject {
		case .Profile:
			return MenuNavigationObject(menuRootType: .initialStoryBoardType, storyBoardName: "Profile", viewControllerIdentifier: "profileStoryBoard", menuType: .Profile)
		case .Inbox:
			return MenuNavigationObject(menuRootType: .initialStoryBoardType, storyBoardName: "Inbox", viewControllerIdentifier: "inboxStoryBoard", menuType: .Inbox)
		case .Notification:
			return MenuNavigationObject(menuRootType: .initialStoryBoardType, storyBoardName: "Notification", viewControllerIdentifier: "notificationStoryBoard", menuType: .Notification)
		case .Settings:
			return MenuNavigationObject(menuRootType: .initialStoryBoardType, storyBoardName: "Settings", viewControllerIdentifier: "settingsStoryBoard", menuType: .Settings)
		}
	}
}
