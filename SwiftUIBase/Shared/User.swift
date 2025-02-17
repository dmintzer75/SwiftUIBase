//
//  User.swift
//  SwiftUIBase
//
//  Created by WKS-MAC01 on 10/04/2024.
//

import Foundation

struct UserArray: Codable {
    let users: [User]
    let total, skip, limit: Int
}

struct User: Codable, Identifiable {
    let id: Int
    let firstName, lastName: String
    let age: Int
    let email, phone, username, password: String
    let birthDate: String
    let image: String
    let height: Int
    let weight: Double
}
