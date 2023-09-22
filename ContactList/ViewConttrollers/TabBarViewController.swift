//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Руслан Мингалиев on 22.09.2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
        
    }

    private func setupViewController() {
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let sectionVC = viewControllers?.last as? OtherContactListViewController else { return }
       
        
        let persons = Person.getContactList()
        contactListVC.contactList = persons
        sectionVC.contactList = persons
    }

}
