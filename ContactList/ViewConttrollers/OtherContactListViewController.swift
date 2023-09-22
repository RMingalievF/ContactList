//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Руслан Мингалиев on 23.11.2022.
//

import UIKit

class OtherContactListViewController: UITableViewController {
    
    var contactList: [Person]!

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contactList[section].contactFullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "otherContact", for: indexPath)
        
        let contact = contactList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = contact.phoneNumber
            content.image = UIImage(systemName: "phone")
            
        default:
            content.text = contact.eMail
            content.image = UIImage(systemName: "tray")
        }
    
        cell.contentConfiguration = content
        return cell
    }


    // MARK: - Navigation

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    

}
