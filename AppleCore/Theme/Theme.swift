//
//  Theme.swift
//  AppleCore
//
//  Created by Riley Calkins on 3/6/19.
//  Copyright © 2019 Riley Calkins. All rights reserved.
//

import UIKit

class Theme {
    static var current: ThemeProtocol = LightTheme()
    static var seletedTint: Int = 0
    static var tint: UIColor = Theme.current.getTint(selectedTint: Theme.seletedTint)
    static var selectedText: UIColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
}
