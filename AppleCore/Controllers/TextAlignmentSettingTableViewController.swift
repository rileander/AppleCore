//
//  TextAlignmentSettingTableViewController.swift
//  AppleCore
//
//  Created by Riley Calkins on 3/16/19.
//  Copyright © 2019 Riley Calkins. All rights reserved.
//

import UIKit

protocol TextAlignmentSettingTableViewControllerDelegate: class {
    func viewControllerDidCancel(_ controller: TextAlignmentSettingTableViewController)
    
}

class TextAlignmentSettingTableViewController: UITableViewController {

    weak var delegate: TextAlignmentSettingTableViewControllerDelegate?
    
    @IBOutlet weak var cancelNavigationButton: UIBarButtonItem!
    
    @IBOutlet weak var doneNavigationButton: UIBarButtonItem!
    
    @IBOutlet weak var leftJustifiedCell: UITableViewCell!
    
    @IBOutlet weak var leftJustifiedTextLabel: UILabel!
    
    @IBOutlet weak var leftJustifiedImageView: UIImageView!
    
    @IBOutlet weak var centerJustifiedCell: UITableViewCell!
    
    @IBOutlet weak var centerJustifiedTextLabel: UILabel!
    
    @IBOutlet weak var centerJustifiedImageView: UIImageView!
    
    @IBOutlet weak var rightJustifiedCell: UITableViewCell!
    
    @IBOutlet weak var rightJustifiedTextLabel: UILabel!
    
    @IBOutlet weak var rightJustifiedImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        applyTheme()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        applyTheme()
    }
    
    // MARK: - Table view data source

    @IBAction func cancelNavigationButtonAction(_ sender: Any) {
        delegate?.viewControllerDidCancel(self)
    }
    
    
    @IBAction func doneNavigationButtonAction(_ sender: Any) {
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            leftJustifiedTextLabel.textColor = Theme.selectedText
            leftJustifiedCell.contentView.backgroundColor = Theme.tint
            leftJustifiedImageView.tintColor = Theme.current.settingsCell
        } else if indexPath.row == 1 {
            centerJustifiedTextLabel.textColor = Theme.selectedText
            centerJustifiedCell.contentView.backgroundColor = Theme.tint
            centerJustifiedImageView.tintColor = Theme.current.settingsCell
        } else if indexPath.row == 2 {
            rightJustifiedTextLabel.textColor = Theme.selectedText
            rightJustifiedCell.contentView.backgroundColor = Theme.tint
            rightJustifiedImageView.tintColor = Theme.current.settingsCell
        }
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            leftJustifiedCell.contentView.backgroundColor = Theme.current.settingsCell
            leftJustifiedImageView.tintColor = Theme.tint
            leftJustifiedTextLabel.textColor = Theme.current.text
        } else if indexPath.row == 1 {
            centerJustifiedCell.contentView.backgroundColor = Theme.current.settingsCell
            centerJustifiedImageView.tintColor = Theme.tint
            centerJustifiedTextLabel.textColor = Theme.current.text
        } else if indexPath.row == 2 {
            rightJustifiedCell.contentView.backgroundColor = Theme.current.settingsCell
            rightJustifiedImageView.tintColor = Theme.tint
            rightJustifiedTextLabel.textColor = Theme.current.text
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
        
        leftJustifiedCell.backgroundColor = Theme.current.settingsCell
        leftJustifiedTextLabel.textColor = Theme.current.text
        leftJustifiedImageView.tintColor = Theme.tint
            centerJustifiedCell.backgroundColor = Theme.current.settingsCell
        leftJustifiedImageView.layer.shadowRadius = 2
        leftJustifiedImageView.layer.shadowColor = Theme.tint.cgColor
        leftJustifiedImageView.layer.shadowOffset = CGSize(width: 0, height: 0)
        
       centerJustifiedCell.backgroundColor = Theme.current.settingsCell
        centerJustifiedImageView.tintColor = Theme.tint
        centerJustifiedImageView.layer.shadowColor = Theme.tint.cgColor
        centerJustifiedImageView.layer.shadowOffset = CGSize(width: 0, height: 0)
        centerJustifiedImageView.layer.shadowRadius = 2
        centerJustifiedTextLabel.textColor = Theme.current.text
        
        rightJustifiedCell.backgroundColor = Theme.current.settingsCell
        rightJustifiedImageView.tintColor = Theme.tint
        rightJustifiedImageView.layer.shadowColor = Theme.tint.cgColor
        rightJustifiedImageView.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        rightJustifiedImageView.layer.shadowRadius = 2
        rightJustifiedTextLabel.textColor = Theme.current.text
    }
}
