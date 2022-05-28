//
//  Step.swift
//  Food recipe
//
//  Created by aleksandre on 23.05.22.
//

import Foundation


struct Step: Codable
{
    
    var number: Int
    var step: String
    var ingredients: [Ingredient]
    var equipment: [Equipment]
    
}
