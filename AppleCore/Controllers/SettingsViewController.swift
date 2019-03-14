//
//  SecondViewController.swift
//  AppleCore
//
//  Created by Riley Calkins on 3/6/19.
//  Copyright © 2019 Riley Calkins. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {

    var colorPickerVisible = false
    var buttonSizePickerVisible = false
    var themeSwitch = false
    
    var alertController = UIAlertController()
    
    @IBOutlet var settingsTableView: UITableView!
    
    @IBOutlet weak var buttonSizeControllerSettingsCell: UITableViewCell!
    @IBOutlet weak var buttonSizeLabel: UILabel!
    
    @IBOutlet weak var buttonColourControllerSettingsCell: UITableViewCell!
    
    @IBOutlet weak var textSizeLogsSettingsCell: UITableViewCell!
    
    @IBOutlet weak var textSizeLabel: UILabel!
    
    @IBOutlet weak var textColourLogsSettingsCell: UITableViewCell!
    
    @IBOutlet weak var textColourLabel: UILabel!
    
    @IBOutlet weak var alignmentLogsSettingsCell: UITableViewCell!
    
    @IBOutlet weak var textAlignmentLabel: UILabel!
    
    @IBOutlet weak var connectedDevicesBluetoothSettingsCell: UITableViewCell!
    
    @IBOutlet weak var deviceNameLabel: UILabel!
    
    @IBOutlet weak var connectDeviceBluetoothSettingsCell: UITableViewCell!
    
    @IBOutlet weak var nightModeAppearanceSettingsCell: UITableViewCell!
    
    @IBOutlet weak var nightModeAppearanceSettingsLabel: UILabel!
    @IBOutlet weak var nightModeAppearanceSettingsBackgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    func showColorPicker() {
        colorPickerVisible = true
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
        
        
    }
    
    @IBAction func themeChanged(_ sender: UISwitch) {
        Theme.current = sender.isOn ? DarkTheme() : LightTheme()
        if sender.isOn {
            Theme.current = DarkTheme() as ThemeProtocol
            
        } else {
            Theme.current = LightTheme() as ThemeProtocol

        }
        
        applyTheme()
        
    }
    
    
    
    fileprivate func applyTheme() {
        
        tableView.backgroundColor = Theme.current.logsBackground

        tableView.tableHeaderView?.backgroundColor = Theme.current.logsBackground
        tableView.tableHeaderView?.tintColor = Theme.current.tint
        
        buttonSizeControllerSettingsCell.backgroundColor = Theme.current.settingsCell
        buttonSizeControllerSettingsCell.textLabel?.textColor = Theme.current.text
        
        buttonSizeControllerSettingsCell.detailTextLabel?.textColor = Theme.current.tint
        
        buttonColourControllerSettingsCell.backgroundColor = Theme.current.settingsCell
        buttonColourControllerSettingsCell.textLabel?.textColor = Theme.current.text
        buttonColourControllerSettingsCell.accessoryView?.backgroundColor = Theme.current.tint
        buttonColourControllerSettingsCell.tintColor = Theme.current.tint
    
        
        textSizeLogsSettingsCell.backgroundColor = Theme.current.settingsCell
        textSizeLogsSettingsCell.textLabel?.textColor = Theme.current.text
        textSizeLogsSettingsCell.detailTextLabel?.textColor = Theme.current.tint
        
        
        textColourLogsSettingsCell.backgroundColor = Theme.current.settingsCell
        textColourLogsSettingsCell.textLabel?.textColor = Theme.current.text
        textColourLogsSettingsCell.detailTextLabel?.textColor = Theme.current.tint
        
        alignmentLogsSettingsCell.backgroundColor = Theme.current.settingsCell
        alignmentLogsSettingsCell.textLabel?.textColor = Theme.current.text
        alignmentLogsSettingsCell.detailTextLabel?.textColor = Theme.current.tint
        
        connectedDevicesBluetoothSettingsCell.backgroundColor = Theme.current.settingsCell
        connectedDevicesBluetoothSettingsCell.textLabel?.textColor = Theme.current.text
        connectedDevicesBluetoothSettingsCell.detailTextLabel?.textColor = Theme.current.tint
        
        nightModeAppearanceSettingsLabel.textColor = Theme.current.text
        nightModeAppearanceSettingsBackgroundView.backgroundColor = Theme.current.settingsCell
        
    }
    
    func showAlert(settingType: SettingType) {
        var title: String?
        var message: String?

        switch settingType {
        case .ButtonSize:
            title = "Button Size"
            message = "Select a Size between 10 and 40"
        case .ButtonColour:
            title = "Button Colour"
            message = "Select a color for the buttons"
            print("Button Colour")
        case .TextSize:
            title = "Text Size"
            message = "Select a size for the text in the Logs"
            print("Text Size")
        case .TextColour:
            title = "Text Colour"
            message = "Select a color for the text in the Logs"
            print("Text Colour")
        case .Alignment:
            title = "Alignment"
            message = "Select an alignment style for the Logs"
            print("Alignment")
        case .ConnectBluetooth:
            title = "Connect Bluetooth"
            message = "Select a device to pair with"
            print("Connect Bluetooth")
        }
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    }
}


enum SettingType {
    case ButtonSize
    case ButtonColour
    case TextSize
    case TextColour
    case Alignment
    case ConnectBluetooth
}




