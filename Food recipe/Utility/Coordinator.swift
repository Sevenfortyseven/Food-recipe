//
//  Coordinator.swift
//  Food recipe
//
//  Created by aleksandre on 22.05.22.
//

import Foundation
import UIKit

final class Coordinator
{
    /// Reference To The Core Data Managed Data object context
    private var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    public var navigationController: UINavigationController?
    
    func start() {
        // Create initial VC
        let initialVM = InitialViewModel()
        let initialVC = InitialViewController(viewModel: initialVM)
        navigationController?.setViewControllers([initialVC], animated: false)
        
    }
}




extension Coordinator: HomeViewControllerDelegate
{
    
    
}
