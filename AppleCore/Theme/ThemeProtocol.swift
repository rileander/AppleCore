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
    var buttonContainer: UIColor { get }
    var buttonBackground: UIColor { get }
    
    var settingsSection: UIColor { get }
    var logsText: UIColor { get }
    var text: UIColor { get }
    
    var selectedTint: Int { get set }
    
    func getTint(selectedTint: Int) -> UIColor
    
    var tint1: UIColor { get }
    var tint2: UIColor { get }
    var tint3: UIColor { get }
    var tint4: UIColor { get }
    var settingsCell: UIColor { get }
}
