//
//  Constants.swift
//  AppleCore
//
//  Created by Riley Calkins on 3/13/19.
//  Copyright © 2019 Riley Calkins. All rights reserved.
//

import Foundation
import UIKit


class Constants {
    struct InterfaceConstants {
        static let DASH: String = " - "
        static let SPIN_DIRECTION: String = "Spin Direction"
        static let CLOCKWISE: String = "Clockwise"
        static let COUNTER_CLOCKWISE: String = "Counter-Clockwise"
        static let DIRECTION_SWITCH: String = "Direction Switch"
        static let LOG: String = "LOG"
    }
    struct ButtonConstants {
        
        static let BUTTON_ONE: String = "Button One - 5/4ths"
        static let BUTTON_TWO: String = "Button Two - 3/4ths"
        static let BUTTON_THREE: String = "Button Three - 10 Degrees"
        static let BUTTON_FOUR: String = "Button Four - Clamp"
        
    }
    
    struct CellConstants {
        static let LOGS_CELL: String = "LOGS_CELL"
        static let SETTINGS_BUTTON_SIZE_CELL: String = "SETTINGS_BUTTON_SIZE_CELL"
        static let SETTINGS_INTERFACE_TINT: String = "SETTINGS_INTERFACE_TINT_CELL"
        static let SETTINGS_TEXT_SIZE_CELL: String = "SETTINGS_TEXT_SIZE_CELL"
        static let SETTINGS_TEXT_COLOUR_CELL: String = "SETTINGS_TEXT_COLOUR_CELL"
        static let SETTINGS_TEXT_ALIGNMENT_CELL: String = "SETTINGS_TEXT_ALIGNMENT_CELL"
    }
    
    struct SegueConstants {
        static let LOGS_CELL: String = "LOGS_CELL"
        static let BUTTON_SIZE: String = "BUTTON_SIZE_SEGUE"
        static let INTERFACE_TINT: String = "INTERFACE_TINT_SEGUE"
        static let TEXT_SIZE: String = "TEXT_SIZE_SEGUE"
        static let TEXT_COLOUR: String = "TEXT_COLOUR_SEGUE"
        static let TEXT_ALIGNMENT: String = "TEXT_ALIGNMENT_SEGUE"
    }
    
    struct ColorConstants {
        static let tint1 = UIColor(named: "Tint1")!
        static let tint2 = UIColor(named: "Tint2")!
        static let tint3 = UIColor(named: "Tint3")!
        static let tint4 = UIColor(named: "Tint4")!
    }
    
}

