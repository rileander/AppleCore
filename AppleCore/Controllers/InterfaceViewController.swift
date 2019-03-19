//
//  FirstViewController.swift
//  AppleCore
//
//  Created by Riley Calkins on 3/6/19.
//  Copyright © 2019 Riley Calkins. All rights reserved.
//

import UIKit

class InterfaceViewController: UIViewController {
    
    var logsEntrys: [String] = []
    var spinDirectionClockwise: Bool = true
    
    @IBOutlet weak var logsTableView: UITableView!
    @IBOutlet weak var logsBorderView: UIView!
    
    
    
    @IBOutlet weak var buttonStack: UIStackView!
    @IBOutlet weak var buttonStackBorder: UIView!
    
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    
    @IBOutlet weak var spinDirectionSwitch: UISwitch!
    @IBOutlet weak var spinDirectionLabel: UILabel!
    @IBOutlet weak var switchBorderView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        applyTheme()
        logsTableView.reloadData()
    }
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        
//        applyTheme()
//        logsTableView.reloadData()
//    }
    
    @IBAction func buttonOne(_ sender: Any) {
        buttonOne.titleLabel?.textColor = Theme.tint
        buttonOne.tintColor = Theme.tint
        let functionString = Constants.ButtonConstants.BUTTON_ONE
        logsEntrys.append(Constants.InterfaceConstants.LOG + intToString(int: newLogsEntryNumber()) + Constants.InterfaceConstants.DASH + functionString)
        logsTableView.reloadData()
        guard let lastIndexPath = logsTableView.indexPathsForVisibleRows?.last else { return }
        logsTableView.scrollToRow(at: lastIndexPath, at: UITableView.ScrollPosition.middle, animated: true)
    }
    
    @IBAction func buttonTwo(_ sender: Any) {
        buttonTwo.titleLabel?.textColor = Theme.tint
        buttonTwo.tintColor = Theme.tint
        let functionString = Constants.ButtonConstants.BUTTON_TWO
        logsEntrys.append(Constants.InterfaceConstants.LOG + intToString(int: newLogsEntryNumber()) + Constants.InterfaceConstants.DASH + functionString)
        logsTableView.reloadData()
        guard let lastIndexPath = logsTableView.indexPathsForVisibleRows?.last else { return }
        logsTableView.scrollToRow(at: lastIndexPath, at: UITableView.ScrollPosition.middle, animated: true)

        print("Success")
    }
    
    @IBAction func buttonThree(_ sender: Any) {
        buttonThree.titleLabel?.textColor = Theme.tint
        buttonThree.tintColor = Theme.tint
        let functionString = Constants.ButtonConstants.BUTTON_THREE
        logsEntrys.append(Constants.InterfaceConstants.LOG + intToString(int: newLogsEntryNumber()) + Constants.InterfaceConstants.DASH + functionString)
        logsTableView.reloadData()
        guard let lastIndexPath = logsTableView.indexPathsForVisibleRows?.last else { return }
        logsTableView.scrollToRow(at: lastIndexPath, at: UITableView.ScrollPosition.middle, animated: true)

        print("Success")
    }
    
    @IBAction func buttonFour(_ sender: Any) {
        
        
        if buttonFour.isSelected {
            buttonFour.backgroundColor = Theme.tint
        } else {
            buttonFour.backgroundColor = Theme.current.buttonBackground
            buttonFour.setTitleColor(Theme.tint, for: .normal)
        }
        let functionString = Constants.ButtonConstants.BUTTON_FOUR
        logsEntrys.append(Constants.InterfaceConstants.LOG + intToString(int: newLogsEntryNumber()) + Constants.InterfaceConstants.DASH + functionString)
        logsTableView.reloadData()
        guard let lastIndexPath = logsTableView.indexPathsForVisibleRows?.last else { return }
        logsTableView.scrollToRow(at: lastIndexPath, at: UITableView.ScrollPosition.middle, animated: true)

        print("Success")
    }
    
    func newLogsEntryNumber() -> Int {
        let value = logsEntrys.count + 1
        return value
    }
    
    func getLastIndexPath() -> Int {
        let value = logsEntrys.count
        return value
    }
    
    func intToString(int: Int) -> String {
        return "\(int)"
    }
    
    func setUpView() {
        logsTableView.backgroundColor = Theme.current.background
        logsTableView.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        view.backgroundColor = Theme.current.background
        
        
        logsTableView.layer.cornerRadius = 10
        
        spinDirectionSwitch.tintColor = Theme.tint
        
        logsBorderView.layer.backgroundColor = Theme.tint.cgColor
        logsBorderView.layer.cornerRadius = 10
        
        
        buttonStackBorder.backgroundColor = Theme.current.background
        buttonStackBorder.layer.cornerRadius = buttonStackBorder.bounds.height / 2
        
        buttonOne.layer.borderColor = Theme.tint.cgColor
        buttonOne.layer.cornerRadius = buttonOne.bounds.height / 2
        buttonOne.layer.borderWidth = 5
        
        buttonTwo.layer.borderColor =
            Theme.tint.cgColor
        buttonTwo.layer.cornerRadius = buttonTwo.bounds.height / 2
        buttonTwo.layer.borderWidth = 5
        
        buttonThree.layer.borderColor = Theme.tint.cgColor
        buttonThree.layer.cornerRadius = buttonThree.bounds.height / 2
        buttonThree.layer.borderWidth = 5
        
        buttonFour.layer.borderColor = Theme.tint.cgColor
        buttonFour.layer.cornerRadius = buttonFour.bounds.height / 2
        buttonFour.layer.borderWidth = 5
        
        switchBorderView.layer.cornerRadius = switchBorderView.bounds.height / 2
        
        logsTableView.remembersLastFocusedIndexPath = true
        
       
        self.logsTableView.showsVerticalScrollIndicator = true
    }
    
    func applyTheme() {
        
        tabBarController?.tabBar.tintColor = Theme.tint
        view.backgroundColor = Theme.current.background
        
        logsTableView.backgroundColor = Theme.current.logsBackground
        
        logsBorderView.backgroundColor = Theme.tint
        
        switchBorderView.backgroundColor = Theme.current.buttonContainer
        
        spinDirectionSwitch.tintColor = Theme.tint
        spinDirectionSwitch.onTintColor = Theme.tint
        
        buttonStackBorder.backgroundColor = Theme.current.buttonContainer
        
        buttonOne.layer.borderColor = Theme.tint.cgColor
        buttonOne.backgroundColor = Theme.current.buttonBackground
        buttonOne.setTitleColor(Theme.tint, for: .normal)
        
        buttonTwo.layer.borderColor = Theme.tint.cgColor
        buttonTwo.backgroundColor = Theme.current.buttonBackground
        buttonTwo.setTitleColor(Theme.tint, for: .normal)
    
        buttonThree.layer.borderColor = Theme.tint.cgColor
        buttonThree.backgroundColor = Theme.current.buttonBackground
        buttonThree.setTitleColor(Theme.tint, for: .normal)
        
        buttonFour.layer.borderColor = Theme.tint.cgColor
        buttonFour.backgroundColor = Theme.current.buttonBackground
        buttonFour.setTitleColor(Theme.tint, for: .normal)
    }
    
    @IBAction func spinDirectionChanged(_ sender: Any) {
        
        if spinDirectionSwitch.isOn == false {
            spinDirectionLabel.text = Constants.InterfaceConstants.SPIN_DIRECTION + Constants.InterfaceConstants.DASH + Constants.InterfaceConstants.COUNTER_CLOCKWISE
            
            let functionString = Constants.InterfaceConstants.DIRECTION_SWITCH + Constants.InterfaceConstants.DASH + Constants.InterfaceConstants.COUNTER_CLOCKWISE
            logsEntrys.append(Constants.InterfaceConstants.LOG + intToString(int: newLogsEntryNumber()) + Constants.InterfaceConstants.DASH + functionString)
            logsTableView.reloadData()
            guard let lastIndexPath = logsTableView.indexPathsForVisibleRows?.last else { return }
            logsTableView.scrollToRow(at: lastIndexPath, at: UITableView.ScrollPosition.middle, animated: true)
            
        } else {
            spinDirectionLabel.text = Constants.InterfaceConstants.SPIN_DIRECTION + Constants.InterfaceConstants.DASH + Constants.InterfaceConstants.CLOCKWISE
            let functionString = Constants.InterfaceConstants.DIRECTION_SWITCH + Constants.InterfaceConstants.DASH + Constants.InterfaceConstants.CLOCKWISE
            logsEntrys.append(Constants.InterfaceConstants.LOG + intToString(int: newLogsEntryNumber())  + Constants.InterfaceConstants.DASH + functionString)
            logsTableView.reloadData()
            guard let lastIndexPath = logsTableView.indexPathsForVisibleRows?.last else { return }
            logsTableView.scrollToRow(at: lastIndexPath, at: UITableView.ScrollPosition.middle, animated: true)
            
        }
    }
    
}

extension InterfaceViewController: UITableViewDelegate {
    
}

extension InterfaceViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return logsEntrys.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CellConstants.LOGS_CELL, for: indexPath)
        cell.textLabel?.text = logsEntrys[indexPath.row]
        cell.detailTextLabel?.text
        return cell
    }
    
}
