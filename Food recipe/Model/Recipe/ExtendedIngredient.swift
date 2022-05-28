//
//  Ingredient.swift
//  Food recipe
//
//  Created by aleksandre on 23.05.22.
//

import Foundation

struct ExtendedIngredient: Codable
{
    
    var id: Int
    var aisle: String
    var image: String
    var consistency: String
    var name: String
    var nameClean: String
    var original: String
    var originalName: String
    var amount: Float
    var unit: String
    var meta: [String]
    var measures: [Measure]
    
    
}
