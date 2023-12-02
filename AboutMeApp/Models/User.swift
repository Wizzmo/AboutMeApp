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
                jobTitle: "Senior QA",
                biography: """
Максим Макаров родился в 1992 году в городе Краснодар, Краснодарского края, но в \
детстве проводил много времени в небольшой деревне Ванюжичи в республике Беларусь. \
Мать будущего iOS-разработчика была фармацевтом, а отец - военным. Максим окончил \
2 университета - Кубанский государственный университет в г. Краснодар и ЛЭТИ в \
г. Санкт-Петербург. В результате он получил спецализацию по 2-ум направлениям - \
"Системный анализ и управление" и "Управление качеством". Несколько лет работал
по специализации на небольшом производстве, на котором делали кабельные сборки \
для вертолетов, лифтов и нефтяных установок. В 2019 году Максим решил сменить
род деятеьности и стал QA-инженером в команде мобильной разработки, чем и занимается \
по сей день
"""
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
    let biography: String
}
