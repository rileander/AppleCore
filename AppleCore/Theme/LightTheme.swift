//
//  LightTheme.swift
//  AppleCore
//
//  Created by Riley Calkins on 3/6/19.
//  Copyright © 2019 Riley Calkins. All rights reserved.
//

import UIKit

class LightTheme: ThemeProtocol {
    var selectedTint: Int = 0
    
    var buttonContainer = UIColor(named: "LightThemeButtonStackBorder")!
    
    var buttonBackground = UIColor(named: "LightThemeButtonBackground")!
    
    var accent: UIColor = UIColor(named: "LightThemeAccent")!
    
    var lightAccent: UIColor = UIColor(named: "LightThemeLightAccent")!
    
    var background: UIColor = UIColor(named: "LightThemeBackground")!

    var settingsSection: UIColor = UIColor(named: "LightThemeSettingsSection")!
    
    var logsBackground: UIColor = UIColor(named: "LightThemeLogsBackground")!
    
    var logsText: UIColor = UIColor(named:
        "LightThemeLogsText")!
    
    var text: UIColor = UIColor(named: "LightThemeText")!
    
    
    var seletedTint: Int = 0
    
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
    
    var settingsCell: UIColor = UIColor(named: "LightThemeSettingsCell")!
    
}
