//
//  HomeVM.swift
//  Food recipe
//
//  Created by aleksandre on 22.05.22.
//

import Foundation
import CoreData


final class HomeViewModel
{
    let context: NSManagedObjectContext
    let service: RecipeService
    
    
    /// Temp Store
    var items: [Recipe]?
    
    
    init(service: RecipeService, context: NSManagedObjectContext) {
        self.context = context
        self.service = service


        Task(priority: .background) {
            let result = await service.getRandomRecipes()
            switch result {
            case .success(let response):
                print(response)
            case .failure(let error):
                dump(error)
            }
        }
    }
    
    
    
 
}
