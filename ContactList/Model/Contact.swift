//
//  Contact.swift
//  ContactList
//
//  Created by Руслан Мингалиев on 23.11.2022.
//

struct Contact {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let eMail: String
    
    var contsctName: String {
        "\(firstName) \(lastName)"
    }
}

extension Contact {
    static func getContactList() -> [Contact] {
        [
        Contact(firstName: "Ruslan", lastName: "Mingaliev", phoneNumber: "123456789", eMail: "123@mail.ru"),
        Contact(firstName: "Timur", lastName: "Mingaliev", phoneNumber: "123456789", eMail: "123@mail.ru"),
        Contact(firstName: "Alexandr", lastName: "Mingaliev", phoneNumber: "123456789", eMail: "123@mail.ru"),
        Contact(firstName: "Fanil", lastName: "Mingaliev", phoneNumber: "123456789", eMail: "123@mail.ru")
        ]
    }
}
