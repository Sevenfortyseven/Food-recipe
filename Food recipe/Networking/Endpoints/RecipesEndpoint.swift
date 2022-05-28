//
//  RecipesEndpoint.swift
//  Food recipe
//
//  Created by aleksandre on 23.05.22.
//

import Foundation


enum RecipesEndpoint
{
    case randomRecipes(number: String)
}

extension RecipesEndpoint: Endpoint
{
    var scheme: String {
        switch self {
        case .randomRecipes:
            return "https"
        }
    }
    
    var baseURL: String {
        switch self {
        case .randomRecipes:
            return "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com"
        }
    }
    
    var path: String {
        switch self {
        case .randomRecipes:
            return "/recipes/random"
        }
    }
    
    var params: [URLQueryItem] {
        switch self {
        case .randomRecipes(let number):
            return [URLQueryItem(name: "number", value: number)]
        }
    }
    
    var method: RequestMethod {
        switch self {
        case .randomRecipes:
            return .GET
        }
    }
    
    var body: [String : String]? {
        switch self {
        default: return nil
        }
    }
    
    var header: [String : String]? {
        switch self {
        case .randomRecipes:
            return ["X-RapidAPI-Host": "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
                    "X-RapidAPI-Key": "b43c91318emshd406d4781d3f806p101f90jsn723efe5a7400"]
            
        }
    }
    
    
    
}
