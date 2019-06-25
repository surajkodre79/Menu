//
//  ViewController.swift
//  FirebaseDemo
//
//  Created by Suraj Kodre on 28/03/19.
//  Copyright © 2019 Suraj Kodre. All rights reserved.
//
import UIKit
//import Firebase
//import FirebaseAnalytics

class MenuContainer: BaseViewController {
    
    var isExpanded = false
	var centerController: ContainerController?
	var menuController: MenuView?
	
	@IBOutlet weak var menuContainer: UIView!
	@IBOutlet weak var containerView: UIView!
	@IBOutlet weak var leadingSpaceMenuVC: NSLayoutConstraint!
	@IBOutlet weak var leadingSpaceHomeVC: NSLayoutConstraint!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		leadingSpaceMenuVC.constant = -236
    }
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		switch (segue.identifier, segue.destination) {
		case let(.some("homeSegue"), destination as ContainerController):
			centerController = destination
		case let(.some("menuSegue"), destination as MenuView):
			menuController = destination
			menuController?.delegate = self
		default: break
		}
	}
	
    override var prefersStatusBarHidden: Bool {
        return isExpanded
    }
	
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func animatePannel(shouldExpand: Bool) {
        if shouldExpand {
            //show menu
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
				self.leadingSpaceHomeVC.constant = Display.width - self.menuContainer.frame.size.width
				self.leadingSpaceMenuVC.constant = 0
            }, completion: nil)
        } else {
            //hide menu
            UIView.animate(withDuration	: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
				self.leadingSpaceMenuVC.constant = -self.menuContainer.frame.size.width
				self.leadingSpaceHomeVC.constant = 0
            }, completion: nil)
        }
        self.setNeedsStatusBarAppearanceUpdate()
    }
	
}

extension MenuContainer: MenuToggling {
    func handelMenuToggle() {
        isExpanded = !isExpanded
		animatePannel(shouldExpand: isExpanded)
    }
}

