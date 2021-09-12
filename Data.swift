//
//  Data.swift
//  apiXample
//
//  Created by Matthew Abalos on 8/26/21.
//

import SwiftUI

struct User: Decodable, Identifiable {
    let id = UUID()
    let name, username, email: String
    let address: Address
    let company: Company
    
}

// MARK: - Address
struct Address: Decodable {
    let street, suite, city, zipcode: String
    let geo: Geo
}

// MARK: - Geo
struct Geo: Decodable {
    let lat, lng: String
}

struct Company: Decodable {
    let name, catchPhrase, bs: String
}
