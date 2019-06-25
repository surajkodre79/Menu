//
//  MenuController.swift
//  FirebaseDemo
//
//  Created by Suraj Kodre on 29/03/19.
//  Copyright © 2019 Suraj Kodre. All rights reserved.
//

import UIKit

class MenuView: BaseViewController {

    @IBOutlet weak var tableView: UITableView!
    var delegate: MenuToggling?
	//private var menuArray: MenuOption?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .darkGray
        tableView.estimatedRowHeight = 80.0
        tableView.rowHeight = UITableView.automaticDimension
        tableView.separatorStyle = .none
        tableView.register(UINib(nibName: "MenuOptionCell", bundle: nil), forCellReuseIdentifier: "menuCellIdentifier")
		self.loadFirstViewController()
    }
	
	private func loadFirstViewController() {
		let menObj = MenuOption.Profile
		MenuNavigationHelper.shared.show(menuObj: menObj)
	}
}

extension MenuView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCellIdentifier", for: indexPath) as? MenuOptionCell
        if let cell = cell {
            let menuOption = MenuOption(rawValue: indexPath.row)
            cell.menuTitle.text = menuOption?.description
            cell.menuIcon.image = menuOption?.image
            return cell
        } else {
            return UITableViewCell()
        }
    }
}

extension MenuView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menuOption = MenuOption(rawValue: indexPath.row)
        delegate?.handelMenuToggle()
		MenuNavigationHelper.shared.show(menuObj: menuOption!)
    }
}
