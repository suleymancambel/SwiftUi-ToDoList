//
//  User.swift
//  swiftuitodolist
//
//  Created by Süleyman Çambel on 5.12.2023.
//

import Foundation


struct User: Codable {
    let id:      String
    let name:    String
    let surname: String
    let email:   String
    let join:    TimeInterval
}
