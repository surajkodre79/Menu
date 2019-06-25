//
//  Menu.swift
//  Menu
//
//  Created by Suraj Kodre on 16/05/19.
//  Copyright © 2019 Suraj Kodre. All rights reserved.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible {
	case Profile
	case Inbox
	case Notification
	case Settings
	
	var description: String {
		switch self {
		case .Profile: return "Profile"
		case .Inbox: return "Inbox"
		case .Notification: return "Notification"
		case .Settings: return "Settings"
		}
	}
	
	var image: UIImage {
		switch self {
		case .Profile: return UIImage(named: "Profile")!
		case .Inbox: return UIImage(named: "Inbox")!
		case .Notification: return UIImage(named: "menu")!
		case .Settings: return UIImage(named: "Settings")!
		}
	}
}
