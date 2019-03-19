//
//  ButtonSizeSettingTableViewController.swift
//  AppleCore
//
//  Created by Riley Calkins on 3/16/19.
//  Copyright © 2019 Riley Calkins. All rights reserved.
//

import UIKit

protocol ButtonSizeSettingTableViewControllerDelegate: class {
    func viewControllerDidCancel(_ controller: ButtonSizeSettingTableViewController)
    
    func didFinishSelectingButtonSize(_ controller: ButtonSizeSettingTableViewController)
}

class ButtonSizeSettingTableViewController: UITableViewController {

    weak var delegate: ButtonSizeSettingTableViewControllerDelegate?
    
    @IBOutlet weak var cancelNavigationButton: UIBarButtonItem!
    
    @IBOutlet weak var doneNavigationButton: UIBarButtonItem!
    
    @IBOutlet weak var fiftyFiftyView: UIView!
    
    @IBOutlet weak var sixtySixtyView: UIView!
    
    @IBOutlet weak var seventySeventyView: UIView!
    
    @IBOutlet weak var eightyEightyView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

    // MARK: - Table view data source
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        applyTheme()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        applyTheme()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.doneNavigationButton.isEnabled = true
        
    }

    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        //
    }

    @IBAction func cancelNavigationButtonAction(_ sender: Any) {
        delegate?.viewControllerDidCancel(self)
    }
    
    @IBAction func doneNavigationButtonAction(_ sender: Any) {
        delegate?.didFinishSelectingButtonSize(self)
    }
    
    func setupView() {
        fiftyFiftyView.layer.borderWidth = 5
        fiftyFiftyView.layer.cornerRadius = fiftyFiftyView.bounds.height / 2
        fiftyFiftyView.layer.borderColor = Theme.tint.cgColor
        
        sixtySixtyView.layer.borderWidth = 5
        sixtySixtyView.layer.cornerRadius = sixtySixtyView.bounds.height / 2
        sixtySixtyView.layer.borderColor = Theme.tint.cgColor
        
        
        seventySeventyView.layer.borderWidth = 5
        seventySeventyView.layer.cornerRadius = seventySeventyView.bounds.height / 2
        seventySeventyView.layer.borderColor = Theme.tint.cgColor
        
        
        eightyEightyView.layer.borderWidth = 5
        eightyEightyView.layer.cornerRadius = eightyEightyView.bounds.height / 2
        eightyEightyView.layer.borderColor = Theme.tint.cgColor
    }
    
    
    func applyTheme() {
        tableView.backgroundColor = Theme.current.settingsSection
        
        tableView.tableHeaderView?.backgroundColor = Theme.current.background
        tableView.tableHeaderView?.tintColor = Theme.tint
        
        doneNavigationButton.tintColor = Theme.tint
        cancelNavigationButton.tintColor = Theme.tint
    }
}
