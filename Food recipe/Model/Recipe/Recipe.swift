//
//  Recipe.swift
//  Food recipe
//
//  Created by aleksandre on 23.05.22.
//

import Foundation

struct Recipe: Codable
{
    
//    var vegetarian: Bool
//    var vegan: Bool
//    var glutenFree: Bool
//    var dairyFree: Bool
//    var veryHealthy: Bool
//    var cheap: Bool
//    var veryPopular: Bool
//    var sustainable: Bool
//    var weightWatcherSmartPoints: Int
//    var gaps: String
//    var preparationMinutes: Int
//    var cookingMinutes: Int
//    var aggregateLikes: Int
//    var healthScore: Int
//    var creditsText: String?
//    var license: String
//    var pricePerServing: Float
//    var lowFoodmap: Bool
//    var ketogenic: Bool?
//    var whole30: Bool
//    var servings: Int
//    var sourceUrl: String
//    var spoonacularSourceUrl: String
//    var creditText: String?
//    var sourceName: String?
//    var originalId: Int?
//    var extendedIngredients: [ExtendedIngredient]
//    var id: Int
    var title: String
//    var readyInMinutes: Int
//    var image: String
//    var imageType: String
//    var summary: String
//    var cuisines: [String]?
//    var dishTypes: [String]
//    var diets: [String]
//    var occasions: [String]
//    var instructions: String
    var analyzedInstructions: [AnalyzedInstruction]
}

        
extension Recipe
{
    
    struct NetworkResponse: Codable
    {
        var result: [Recipe]
        
        enum CodingKeys: String, CodingKey {
            case result = "recipes"
        }
    }
    
}

