//
//  Shoe.swift
//  nike-store
//
//  Created by Anthony José on 03/03/21.
//

import Foundation

struct Shoe: Codable, Identifiable {
    let id: Int
    let title: String
    let image: String
    let category: String
    let heading: String
    let description: String
    let price: String
}
