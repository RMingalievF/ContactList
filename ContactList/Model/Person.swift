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
    
    var contactName: String {
        "\(firstName) \(lastName)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        var contactList: [Person] = []
        var contact: Person
        for _ in 1...12 {
            contact = Person(firstName: DataStore.shared.firstName.randomElement()!,
                   lastName: DataStore.shared.lastName.randomElement()!,
                   phoneNumber: DataStore.shared.phoneNumber.randomElement()!,
                   eMail: DataStore.shared.email.randomElement()!
                   )
            contactList.append(contact)
        }
        return contactList

    }
}
