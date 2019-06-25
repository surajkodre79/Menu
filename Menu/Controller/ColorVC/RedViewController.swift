//
//  RedViewController.swift
//  FirebaseDemo
//
//  Created by Suraj Kodre on 04/04/19.
//  Copyright © 2019 Suraj Kodre. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        navigationItem.title = "RedVC"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "close").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handelBackButtonClick))
    }
    
    @objc func handelBackButtonClick()  {
        dismiss(animated: true, completion: nil)
    }
}
