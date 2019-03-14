//
//  ThemeProtocol.swift
//  AppleCore
//
//  Created by Riley Calkins on 3/6/19.
//  Copyright © 2019 Riley Calkins. All rights reserved.
//

import UIKit

protocol ThemeProtocol {
    
    var accent: UIColor { get }
    var lightAccent: UIColor { get }
    var background: UIColor { get }
    var logsBackground: UIColor { get }
    var logsText: UIColor { get }
    var text: UIColor { get }
    var tint: UIColor { get }
    var settingsCell: UIColor { get }
}
