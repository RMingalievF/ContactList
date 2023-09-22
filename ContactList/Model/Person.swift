//
//  Contact.swift
//  ContactList
//
//  Created by Руслан Мингалиев on 23.11.2022.
//

struct Person {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let eMail: String
    
    var contactFullName: String {
        "\(firstName) \(lastName)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        
        var contactList: [Person] = []
        
        let firstNames = DataStore.shared.firstName.shuffled()
        let lastNames = DataStore.shared.lastName.shuffled()
        let phoneNumbers = DataStore.shared.phoneNumber.shuffled()
        let eMails = DataStore.shared.email.shuffled()
        
        for index in 0..<firstNames.count {
            let contact = Person(
                firstName: firstNames[index],
                lastName: lastNames[index],
                phoneNumber: phoneNumbers[index],
                eMail: eMails[index]
                   )
            contactList.append(contact)
        }
        return contactList

    }
}
