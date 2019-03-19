//
//  SecondViewController.swift
//  AppleCore
//
//  Created by Riley Calkins on 3/6/19.
//  Copyright © 2019 Riley Calkins. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController, ButtonSizeSettingTableViewControllerDelegate, InterfaceTintSettingTableViewControllerDelegate, TextAlignmentSettingTableViewControllerDelegate, TextSizeSettingTableViewControllerDelegate, TextColourSettingTableViewControllerDelegate{
    
    
    

    var colorPickerVisible = false
    var buttonSizePickerVisible = false
    var themeSwitch = false
    
    
    var alertController = UIAlertController()
    
    @IBOutlet var settingsTableView: UITableView!
    
    @IBOutlet weak var buttonSizeControllerSettingsCell: UITableViewCell!
    @IBOutlet weak var buttonSizeLabel: UILabel!
    
    @IBOutlet weak var interfaceTintLabel: UILabel!
    @IBOutlet weak var buttonColourControllerSettingsCell: UITableViewCell!
    
    @IBOutlet weak var interfaceTintView: UIViewX!
    
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
    
    @IBOutlet weak var nightModeSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        applyTheme()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Constants.SegueConstants.BUTTON_SIZE {
            let controller = segue.destination as! ButtonSizeSettingTableViewController
            controller.delegate = self
            
        } else if segue.identifier == Constants.SegueConstants.INTERFACE_TINT {
            let controller = segue.destination as! InterfaceTintSettingTableViewController
            controller.delegate = self
            
    
        } else if segue.identifier == Constants.SegueConstants.TEXT_SIZE {
            let controller = segue.destination as! TextSizeSettingTableViewController
           controller.delegate = self
            
        } else if segue.identifier == Constants.SegueConstants.TEXT_COLOUR {
            let controller = segue.destination as! TextColourSettingTableViewController
           controller.delegate = self
        
            
        } else if segue.identifier == Constants.SegueConstants.TEXT_ALIGNMENT {
            let controller = segue.destination as! TextAlignmentSettingTableViewController
            controller.delegate = self
            
        }
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
        tabBarController?.tabBar.tintColor = Theme.tint
        
        tableView.backgroundColor = Theme.current.settingsSection

        tableView.tableHeaderView?.backgroundColor = Theme.current.background
        tableView.tableHeaderView?.tintColor = Theme.tint
        
        buttonSizeControllerSettingsCell.backgroundColor = Theme.current.settingsCell
        buttonSizeControllerSettingsCell.textLabel?.textColor = Theme.current.text
        
        buttonSizeControllerSettingsCell.detailTextLabel?.textColor = Theme.tint
        interfaceTintLabel.textColor = Theme.current.text
        
        buttonColourControllerSettingsCell.backgroundColor = Theme.current.settingsCell
        buttonColourControllerSettingsCell.textLabel?.textColor = Theme.current.text
        buttonColourControllerSettingsCell.accessoryView?.backgroundColor = Theme.tint
        buttonColourControllerSettingsCell.tintColor = Theme.tint
    
        
        textSizeLogsSettingsCell.backgroundColor = Theme.current.settingsCell
        textSizeLogsSettingsCell.textLabel?.textColor = Theme.current.text
        textSizeLogsSettingsCell.detailTextLabel?.textColor = Theme.tint
        
        
        textColourLogsSettingsCell.backgroundColor = Theme.current.settingsCell
        textColourLogsSettingsCell.textLabel?.textColor = Theme.current.text
        textColourLogsSettingsCell.detailTextLabel?.textColor = Theme.tint
        
        alignmentLogsSettingsCell.backgroundColor = Theme.current.settingsCell
        alignmentLogsSettingsCell.textLabel?.textColor = Theme.current.text
        alignmentLogsSettingsCell.detailTextLabel?.textColor = Theme.tint
        
        connectedDevicesBluetoothSettingsCell.backgroundColor = Theme.current.settingsCell
        connectedDevicesBluetoothSettingsCell.textLabel?.textColor = Theme.current.text
        connectedDevicesBluetoothSettingsCell.detailTextLabel?.textColor = Theme.tint
        
        connectDeviceBluetoothSettingsCell.backgroundColor = Theme.tint
        
        nightModeAppearanceSettingsLabel.textColor = Theme.current.text
        nightModeAppearanceSettingsBackgroundView.backgroundColor = Theme.current.settingsCell
        nightModeSwitch.tintColor = Theme.tint
        nightModeSwitch.onTintColor = Theme.tint
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
    
    //MARK: ButtonSizeDelegate
    
    func viewControllerDidCancel(_ controller: ButtonSizeSettingTableViewController) {
        navigationController?.popViewController(animated: true)
    }
    
    func didFinishSelectingButtonSize(_ controller: ButtonSizeSettingTableViewController) {
        navigationController?.popViewController(animated: true)
    }
    
    
    func viewControllerDidCancel(_ controller: InterfaceTintSettingTableViewController) {
        navigationController?.popViewController(animated: true)
    }
    
    func didFinishSelectingTint(_ controller: InterfaceTintSettingTableViewController, row: Int) {
        navigationController?.popViewController(animated: true)
        switch row {
        case 0: Theme.tint = Constants.ColorConstants.tint1
            interfaceTintView.backgroundColor = Theme.tint
        case 1: Theme.tint =  Constants.ColorConstants.tint2
            interfaceTintView.backgroundColor = Theme.tint
        case 2: Theme.tint = Constants.ColorConstants.tint3
            interfaceTintView.backgroundColor = Theme.tint
        case 3: Theme.tint = Constants.ColorConstants.tint4
            interfaceTintView.backgroundColor = Theme.tint
        default:
            Theme.tint = Constants.ColorConstants.tint1
        }
    }
    
    func viewControllerDidCancel(_ controller: TextSizeSettingTableViewController) {
        navigationController?.popViewController(animated: true)
    }
    
    func viewControllerDidCancel(_ controller: TextColourSettingTableViewController) {
        navigationController?.popViewController(animated: true)
        
    }
    
    func viewControllerDidCancel(_ controller: TextAlignmentSettingTableViewController) {
        navigationController?.popViewController(animated: true)
    }
}







