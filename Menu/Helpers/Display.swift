//
//  Display.swift
//  FirebaseDemo
//
//  Created by Suraj Kodre on 02/04/19.
//  Copyright © 2019 Suraj Kodre. All rights reserved.
//

import UIKit

public enum DisplayType {
    case unknown
    case iphone4
    case iphone5
    case iphone6
    case iphone6Plus
    static let iphone7 = iphone6
    static let iphone7Plus = iphone6Plus
    case iphoneX
}

public final class Display {
    class var width: CGFloat { return UIScreen.main.bounds.size.width }
    class var height: CGFloat { return UIScreen.main.bounds.size.height }
    class var isPhone: Bool { return UIDevice.current.userInterfaceIdiom == .phone }
    class var maxLength: CGFloat { return max(width, height) }
    class var typeIslike: DisplayType {
        if isPhone && maxLength < 568 {
            return .iphone4
        } else if isPhone && maxLength == 568 {
            return .iphone5
        } else if isPhone && maxLength == 667 {
            return .iphone6
        } else if isPhone && maxLength == 736 {
            return .iphone6Plus
        } else if isPhone && maxLength >= 812 {
            return .iphoneX
        } else {
            return .unknown
        }
    }
}
