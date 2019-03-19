//
//  Settings.swift
//  AppleCore
//
//  Created by Riley Calkins on 3/15/19.
//  Copyright © 2019 Riley Calkins. All rights reserved.
//

import Foundation

protocol SettingsProtocol {
    var buttonSize: Int? { get set }
    var interfaceTint: Int? { get set }
    
    var textSize: Int? { get set }
    var textColour: Int? { get set }
    var alignment: Int? { get set }
    
}


class Settings {
    
}

//class Settings: NSObject, Codable {
//    var name = ""
//    var iconName = "Appointments"
//    var items = [ChecklistItem]()
//    
//    init(name: String, iconName: String = "No Icon"){
//        self.name = name
//        self.iconName = iconName
//        super.init()
//    }
//    
//    func countUncheckedItems() -> Int {
//        var count = 0
//        for item in items where !item.checked {
//            count += 1
//        }
//        return count
//    }
//}
