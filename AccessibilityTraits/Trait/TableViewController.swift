//
//  TableViewController.swift
//  AccessibilityExamples
//
//  Created by Mikhail Rubanov on 31.01.2021.
//

import UIKit

class TableViewController: UITableViewController {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        isAccessibilityElement = true
        accessibilityTraits = .button
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
    }

    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 63
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let traitRaw = 1 << indexPath.row
        let trait = UIAccessibilityTraits(rawValue: UInt64(traitRaw))
        
        if let descrpition = traits[trait] {
            cell.textLabel?.text = descrpition
            cell.textLabel?.textColor = .label
        } else if let privateApi = privateAPI[indexPath.row] {
            cell.textLabel?.text = privateApi
            cell.textLabel?.textColor = .systemOrange
        } else {
            cell.textLabel?.text = String(indexPath.row)
            cell.textLabel?.textColor = .systemGray
        }
        cell.accessibilityTraits = trait
        
        return cell
    }
}
