//
//  Theme.swift
//  AppleCore
//
//  Created by Riley Calkins on 3/6/19.
//  Copyright © 2019 Riley Calkins. All rights reserved.
//

import UIKit



class DarkTheme: ThemeProtocol {
    
    
    
    var buttonContainer = UIColor(named: "DarkThemeButtonStackBorder")!
    
    var buttonBackground = UIColor(named: "DarkThemeButtonBackground")!
    
    var accent: UIColor = UIColor(named: "DarkThemeAccent")!
    
    var lightAccent: UIColor = UIColor(named: "DarkThemeLightAccent")!
    
    var background: UIColor = UIColor(named: "DarkThemeBackground")!
    
    var settingsSection: UIColor = UIColor(named: "DarkThemeSettingsSection")!
    
    var logsBackground: UIColor = UIColor(named: "DarkThemeLogsBackground")!
    
    var logsText: UIColor = UIColor(named:
        "DarkThemeLogsText")!
    
    var text: UIColor = UIColor(named: "DarkThemeText")!
    
    var selectedTint: Int = 0
    
    func getTint(selectedTint: Int) -> UIColor {
        switch selectedTint{
        case 0:
            return Constants.ColorConstants.tint1
        case 1:
            return Constants.ColorConstants.tint2
        case 2:
            return Constants.ColorConstants.tint3
        case 3:
            return Constants.ColorConstants.tint4
        default:
            return Constants.ColorConstants.tint1
        }
    }
    
    var tint1: UIColor = Constants.ColorConstants.tint1
    var tint2: UIColor = Constants.ColorConstants.tint2
    var tint3: UIColor = Constants.ColorConstants.tint3
    var tint4: UIColor = Constants.ColorConstants.tint4
    
    var settingsCell: UIColor = UIColor(named: "DarkThemeSettingsCell")!
}


