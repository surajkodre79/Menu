//
//  PartialView.swift
//  FirebaseDemo
//
//  Created by Suraj Kodre on 02/04/19.
//  Copyright © 2019 Suraj Kodre. All rights reserved.
//

import UIKit

class PartialView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configurePartialClearView() {
        self.frame.size.width = Display.width
        self.frame.size.height = Display.height
        self.backgroundColor = .red
    }
}
