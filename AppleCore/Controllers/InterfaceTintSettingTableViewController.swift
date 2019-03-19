//
//  InterfaceTintSettingTableViewController.swift
//  AppleCore
//
//  Created by Riley Calkins on 3/16/19.
//  Copyright © 2019 Riley Calkins. All rights reserved.
//

import UIKit

protocol InterfaceTintSettingTableViewControllerDelegate: class {
        func viewControllerDidCancel(_ controller: InterfaceTintSettingTableViewController)
    func didFinishSelectingTint(_ controller: InterfaceTintSettingTableViewController, row: Int)
}

class InterfaceTintSettingTableViewController: UITableViewController {

    @IBOutlet weak var aquamarineCell: UITableViewCell!
    @IBOutlet weak var aquamarineTextLabel: UILabel!
    @IBOutlet weak var aquamarineTintView: UIViewX!
    
    @IBOutlet weak var lavendarCell: UITableViewCell!
    @IBOutlet weak var lavendarTextLabel: UILabel!
    @IBOutlet weak var lavendarTintView: UIViewX!
    
    @IBOutlet weak var salmonCell: UITableViewCell!
    @IBOutlet weak var salmonTextLabel: UILabel!
    @IBOutlet weak var salmonTintView: UIViewX!
    
    
    @IBOutlet weak var mintCell: UITableViewCell!
    @IBOutlet weak var mintTextLabel: UILabel!
    @IBOutlet weak var mintTintView: UIViewX!
    
    var selectedColorRow: Int = 0
    
    weak var delegate: InterfaceTintSettingTableViewControllerDelegate?
    
    @IBOutlet weak var cancelNavigationButton: UIBarButtonItem!
    
    @IBOutlet weak var doneNavigationButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        applyTheme()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        applyTheme()
    }
    
    // MARK: - Table view data source

    @IBAction func cancelNavigationButtonAction(_ sender: Any) {
        delegate?.viewControllerDidCancel(self)
    }
    
    
    @IBAction func doneNavigationButtonAction(_ sender: Any) {
        selectedColorRow = tableView.indexPathForSelectedRow?.row ?? 0
        delegate?.didFinishSelectingTint(self , row: selectedColorRow)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.doneNavigationButton.isEnabled = true
        if indexPath.row == 0 {
           cancelNavigationButton.tintColor = Theme.current.tint1
           doneNavigationButton.tintColor = Theme.current.tint1
            aquamarineCell.contentView.backgroundColor = Theme.current.tint1
            aquamarineTintView.borderColor = Theme.current.settingsCell
            aquamarineTintView.backgroundColor = Theme.current.tint1
            aquamarineTextLabel.textColor = Theme.selectedText
            aquamarineTintView.shadowColor = Theme.current.settingsCell
            
            
        } else if indexPath.row == 1 {
            cancelNavigationButton.tintColor = Theme.current.tint2
            doneNavigationButton.tintColor = Theme.current.tint2
            lavendarCell.contentView.backgroundColor = Theme.current.tint2
            lavendarTintView.borderColor = Theme.current.settingsCell
            lavendarTintView.backgroundColor = Theme.current.tint2
            lavendarTextLabel.textColor = Theme.selectedText
            lavendarTintView.shadowColor = Theme.current.settingsCell
        } else if indexPath.row == 2 {
            cancelNavigationButton.tintColor = Theme.current.tint3
            doneNavigationButton.tintColor = Theme.current.tint3
            salmonCell.contentView.backgroundColor = Theme.current.tint3
            salmonTintView.borderColor = Theme.current.settingsCell
            salmonTintView.backgroundColor = Theme.current.tint3
            salmonTextLabel.textColor = Theme.selectedText
            salmonTintView.shadowColor = Theme.current.settingsCell
        } else if indexPath.row == 3 {
            cancelNavigationButton.tintColor = Theme.current.tint4
            doneNavigationButton.tintColor = Theme.current.tint4
            
            mintCell.contentView.backgroundColor = Theme.current.tint4
            mintTintView.borderColor = Theme.current.settingsCell
            mintTintView.backgroundColor = Theme.current.tint4
            mintTextLabel.textColor = Theme.selectedText
            mintTintView.shadowColor = Theme.current.settingsCell
        }
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            aquamarineCell.backgroundColor = Theme.current.settingsCell
            aquamarineTintView.borderColor = Theme.current.tint1
            aquamarineTintView.backgroundColor = Theme.current.settingsCell
            aquamarineTextLabel.textColor = Theme.current.text
        } else if indexPath.row == 1 {
            lavendarCell.backgroundColor = Theme.current.settingsCell
            lavendarTintView.borderColor = Theme.current.tint2
            lavendarTintView.backgroundColor = Theme.current.settingsCell
            lavendarTextLabel.textColor = Theme.current.text
        } else if indexPath.row == 2 {
            salmonCell.backgroundColor = Theme.current.settingsCell
            salmonTintView.borderColor = Theme.current.tint3
            salmonTintView.backgroundColor = Theme.current.settingsCell
            salmonTextLabel.textColor = Theme.current.text
        } else if indexPath.row == 3 {
            mintCell.backgroundColor = Theme.current.settingsCell
            mintTintView.borderColor = Theme.current.tint4
            mintTintView.backgroundColor = Theme.current.settingsCell
            mintTextLabel.textColor = Theme.current.text
        }
    }
    
    func applyTheme() {
        tableView.backgroundColor = Theme.current.settingsSection
        
        tabBarController?.tabBar.tintColor = Theme.tint
        tableView.tableHeaderView?.backgroundColor = Theme.current.background
        tableView.separatorColor = Theme.current.background
        tableView.tableHeaderView?.tintColor = Theme.tint
        
        doneNavigationButton.tintColor = Theme.tint
        cancelNavigationButton.tintColor = Theme.tint
        aquamarineCell.contentView.backgroundColor = Theme.current.settingsCell
        aquamarineTintView.borderColor = Theme.current.tint1
        aquamarineTextLabel.textColor = Theme.current.text
        aquamarineTintView.backgroundColor = Theme.current.settingsCell
        
        lavendarCell.contentView.backgroundColor = Theme.current.settingsCell
        lavendarTintView.borderColor = Theme.current.tint2
        lavendarTextLabel.textColor = Theme.current.text
        lavendarTintView.backgroundColor = Theme.current.settingsCell
        
        salmonCell.contentView.backgroundColor = Theme.current.settingsCell
        salmonTintView.borderColor = Theme.current.tint3
        salmonTextLabel.textColor = Theme.current.text
        salmonTintView.backgroundColor = Theme.current.settingsCell
        
        mintCell.contentView.backgroundColor = Theme.current.settingsCell
        mintTintView.borderColor = Theme.current.tint4
        mintTextLabel.textColor = Theme.current.text
        mintTintView.backgroundColor = Theme.current.settingsCell
    }
    
}
