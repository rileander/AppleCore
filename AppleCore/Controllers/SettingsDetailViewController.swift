//
//  TextSizeViewController.swift
//  AppleCore
//
//  Created by Riley Calkins on 3/13/19.
//  Copyright © 2019 Riley Calkins. All rights reserved.
//

import UIKit



protocol SettingsDetailViewControllerDelegate: class {
    func itemDetailViewControllerDidCancel(_ controller: SettingsDetailViewController)
//
//    func itemDetailViewController(_ controller: SettingsDetailViewController, didFinishPickingButtonSize)
//
//    func itemDetailViewController(_ controller: SettingsDetailViewController, didFinishPickingPickingButtonColour)
}

class SettingsDetailViewController: UITableViewController {

    weak var delegate: SettingsDetailViewControllerDelegate?
    
    var selectedCellType = CellType.ButtonSize
    
    var buttonSizeArray: [String] = ["40 x 40",
                         "50 x 50",
                         "60 x 60",
                         "70 x 70",
                         "80 x 80"]
    
    var interfaceTintArray: [UIColor] = [Constants.ColorConstants.tint1,
                                       Constants.ColorConstants.tint2,
                                       Constants.ColorConstants.tint3,
                                       Constants.ColorConstants.tint4]
    
    var textSizeArray: [String] = ["9 pt",
                            "10 pt",
                            "11 pt",
                            "12 pt",
                            "13 pt",
                            "14 pt",
                            "15 pt",
                            "16 pt"]
    
    var textColourArray: [UIColor] = [Constants.ColorConstants.tint1,
                                      Constants.ColorConstants.tint2,
                                      Constants.ColorConstants.tint3,
                                      Constants.ColorConstants.tint4]
    
    var textAlignmentArray: [String] = ["Left Justified",
                                        "Center Justified",
                                        "Right Justified"]
    
    
    @IBOutlet var settingsDetailNavigationItem: UINavigationItem!
    
    @IBOutlet weak var cancelNavigationButton: UIBarButtonItem!
    
    @IBOutlet weak var doneNavigationButton: UIBarButtonItem!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelNavigationButtonAction(_ sender: Any) {
        delegate?.itemDetailViewControllerDidCancel(self)
    }
    
    @IBAction func doneNavigationButtonAction(_ sender: Any) {
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        switch selectedCellType {
//        case CellType.ButtonSize:
//            return buttonSizeArray.count
//        case CellType.InterfaceTint:
//            return interfaceTintArray.count
//        case CellType.TextSize:
//            return textSizeArray.count
//        case CellType.TextColour:
//            return textColourArray.count
//        case CellType.TextAlignment:
//            return textAlignmentArray.count
//        }
        return 0
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        switch selectedCellType {
//        case CellType.ButtonSize:
//            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CellConstants.LOGS_CELL, for: indexPath)
//            return cell
//        case CellType.InterfaceTint:
//            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CellConstants.SETTINGS_INTERFACE_TINT, for: indexPath)
//            return cell
//        case CellType.TextSize:
//            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CellConstants.SETTINGS_TEXT_SIZE_CELL, for: indexPath)
//            return cell
//        case CellType.TextColour:
//            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CellConstants.SETTINGS_TEXT_COLOUR_CELL, for: indexPath)
//            return cell
//        case CellType.TextAlignment:
//            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CellConstants.SETTINGS_TEXT_ALIGNMENT_CELL, for: indexPath)
//            return cell
//        }
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CellConstants.LOGS_CELL, for: indexPath)
        return cell
    }
    

}



