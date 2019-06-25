//
//  SettingsViewController.swift
//  FirebaseDemo
//
//  Created by Suraj Kodre on 30/03/19.
//  Copyright © 2019 Suraj Kodre. All rights reserved.
//

import UIKit
import LocalAuthentication

class SettingsViewController: BaseViewController {
	@IBOutlet weak var tableView: UITableView!
	
	var titleArray = ["title","title","title","title","title"]
	
    override func viewDidLoad() {
        super.viewDidLoad()
		tableView.register(UINib(nibName: "SettingsTableViewCell", bundle: nil), forCellReuseIdentifier: "settingsCell")
    }
}

extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 5
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "settingsCell", for: indexPath) as! SettingsTableViewCell
		cell.title.text = titleArray[indexPath.row]
		cell.index = indexPath.row
		cell.delegate = self
		return cell
	}
}

extension SettingsViewController: tableCellButtonClick {
	func cellButtonClicked(index: Int, title: String) {
		titleArray[index] = title
		tableView.reloadData()
	}
}
