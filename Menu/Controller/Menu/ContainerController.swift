//
//  HomeVC.swift
//  FirebaseDemo
//
//  Created by Suraj Kodre on 28/03/19.
//  Copyright © 2019 Suraj Kodre. All rights reserved.
//

import Foundation
import UIKit

class ContainerController: BaseViewController {
	weak var currentViewController: UIViewController?

    var delegate: MenuToggling?
    let partialView = PartialView()
	
    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	func showInContainer(viewController: UIViewController) {
		removeCurrentViewController()
	    addChild(viewController)
		viewController.view.frame = view.frame
		view.addSubview(viewController.view)
		viewController.didMove(toParent: self)
		currentViewController = viewController
	}
	
	private func removeCurrentViewController() {
		guard let currentViewController = currentViewController else {
			return
		}
		currentViewController.willMove(toParent: nil)
		currentViewController.view.removeFromSuperview()
		currentViewController.removeFromParent()
	}
}


