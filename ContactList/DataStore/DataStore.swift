//
//  DataStore.swift
//  ContactList
//
//  Created by Руслан Мингалиев on 23.11.2022.
//

class DataStore {
   
    static let shared = DataStore()
    
    let firstName = ["Ruslan", "Timur", "Ivan", "Anna", "Katya", "Petya", "Rimma", "Fedya", "Tolya", "Tanya", "Rustam", "Renat"]
    
    let lastName = ["Petrov", "Ivanov", "Sidorov", "Pechkin", "Sechkin", "Tupolev", "Kuznecov", "Denisov", "Kharlamov", "Suvorov", "Belykh", "Matrosov"]
    let phoneNumber = [ "+71111111111", "+72222222222", "+733333333333", "+744444444444", "+755555555555", "+766666666666", "+777777777777", "+78888888888", "+79999999999", "+7000000000001", "+72345678901", "+709876543210"]
    
    let email = ["123@mail.ru", "456@mail.ru", "789@mail.ru", "012@mail.ru", "345@mail.ru", "678@mail.ru", "901@mail.ru", "234@mail.ru", "567@mail.ru", "890@mail.ru", "246@mail.ru", "791@mail.ru"]
    
    private init () {}
}
