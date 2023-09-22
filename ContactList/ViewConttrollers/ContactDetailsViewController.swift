//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Руслан Мингалиев on 23.11.2022.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    
    @IBOutlet weak var contactPhotoImageView: UIImageView!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberLabel.text = contact.phoneNumber
        emailLabel.text = contact.eMail
        navigationItem.title = contact.contactName
        
    }

}
