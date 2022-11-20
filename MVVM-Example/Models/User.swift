//
//  User.swift
//  MVVM-Example
//
//  Created by Vitalii Homoniuk on 20.11.2022.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}

extension User {
    static var logins = [
        User(login: "vitaliywx", password: "12345"),
        User(login: "user1", password: "23456"),
        User(login: "user2", password: "234567")
    ]
}
