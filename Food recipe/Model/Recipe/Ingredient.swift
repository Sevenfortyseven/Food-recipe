//
//  Ingredient.swift
//  Food recipe
//
//  Created by aleksandre on 23.05.22.
//

import Foundation


struct Ingredient: Codable
{
    var id: Int
    var name: String
    var localizedName: String
    var image: String
}
