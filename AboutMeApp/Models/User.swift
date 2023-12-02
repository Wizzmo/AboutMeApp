//
//  User.swift
//  AboutMeApp
//
//  Created by Maxim Makarov on 02.12.2023.
//

import Foundation

struct User {
    let user: String
    let password: String
    let person: Person
    
    static func getUsers() -> User {
        User(
            user: "1",
            password: "1",
            person: Person(
                name: "Max",
                surname: "Makarov",
                compamy: "ATI.SU",
                department: "Mobile",
                jobTitle: "Senior QA"
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let compamy: String
    let department: String
    let jobTitle: String
}
