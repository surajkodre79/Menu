//
//  CustomView.swift
//  Menu
//
//  Created by Suraj Kodre on 13/05/19.
//  Copyright © 2019 Suraj Kodre. All rights reserved.
//

import UIKit

class CustomView: UIView {
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		createCustomView()
	}
	
	func createCustomView() {
		let sixtyPercentageHightOfScreen = 100.0
		let sixtyPercentageWidthOfScreen = 100.0
		self.frame.size.height = CGFloat(sixtyPercentageHightOfScreen)
		self.frame.size.width = CGFloat(sixtyPercentageWidthOfScreen)
	}
}
