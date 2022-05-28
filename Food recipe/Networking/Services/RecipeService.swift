//
//  NetworkServicable.swift
//  Food recipe
//
//  Created by aleksandre on 23.05.22.
//

import Foundation

protocol RecipeServicable
{
    func getRandomRecipes() async -> Result< Recipe.NetworkResponse, RequestError>
}


struct RecipeService: RecipeServicable, NetworkEngine
{
    func getRandomRecipes() async -> Result<Recipe.NetworkResponse, RequestError> {
        return await sendRequest(endpoint: RecipesEndpoint.randomRecipes(number: "1"), responseModel: Recipe.NetworkResponse.self)
    }
    
    
}
