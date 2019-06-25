//
//  ProfileViewController.swift
//  Menu
//
//  Created by Suraj Kodre on 09/05/19.
//  Copyright © 2019 Suraj Kodre. All rights reserved.
//

import UIKit

class ProfileViewController: BaseViewController {

	@IBOutlet weak var customViewWidth: NSLayoutConstraint!
	@IBOutlet weak var customView: UIView!
	@IBOutlet weak var scrollView: UIScrollView!
	@IBOutlet weak var stackView: UIStackView!
	@IBOutlet weak var customViewHeight: NSLayoutConstraint!
	@IBOutlet weak var scrollViewHeight: NSLayoutConstraint!

	override func viewDidLoad() {
        super.viewDidLoad()
		
		let customView1 = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
		customView1.backgroundColor = .black
		
		let customView2 = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
		customView2.backgroundColor = .blue
		
		let customView3 = UIView()
		customView3.backgroundColor = .black
		
		let customView4 = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
		customView4.backgroundColor = .blue
		
		let customView5 = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
		customView5.backgroundColor = .purple
		
//		self.stackView.addArrangedSubview(customView1)
//		self.stackView.addArrangedSubview(customView2)
//		self.stackView.addArrangedSubview(customView3)
//		self.stackView.addArrangedSubview(customView4)
//		self.stackView.addArrangedSubview(customView5)
		
		let string = "Label Label Label Label Label Label Label Label Label Label Label Label Label Label Label Label Label Label Label Label Label Label Label "
		
		for i in 0...3 {
			let lbl = UILabel()
			lbl.text = string
			lbl.numberOfLines = 0
			stackView.addArrangedSubview(lbl)
			
			let view = UIView()
			view.addConstraint(NSLayoutConstraint(item: view, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: 100))
			view.backgroundColor = i == 0 ? .black : i == 1 ? .green : .red
			stackView.addArrangedSubview(view)
		}
		
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
			self.scrollViewHeight.constant = self.scrollView.contentSize.height
		}
    }
	
}
