//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Руслан Мингалиев on 23.11.2022.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    private var contactList = Person.getContactList()

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        contactList.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let contact = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = contact.contactName
        cell.contentConfiguration = content
        return cell
    }


    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let detailsVC = segue.destination as? ContactDetailsViewController else  { return }
        detailsVC.contact = contactList[indexPath.row]

    }
    

}
