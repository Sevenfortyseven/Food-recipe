//
//  ViewController.swift
//  Food recipe
//
//  Created by aleksandre on 22.05.22.
//

import UIKit
import CoreData
import SnapKit

protocol HomeViewControllerDelegate: AnyObject
{
    
}


final class HomeViewController: UIViewController
{
    
    weak var delegate: HomeViewControllerDelegate?
    
    public var viewModel: HomeViewModel
    
   
    
    // MARK: -- Initialization --
    
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("Failed to create Product Details VC")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        title = "Home"
        addSubviews()
        initializeConstraints()
        registerCollectionView()
//        fetchData()
    }


    private func addSubviews() {
        view.addSubview(customCollectionView)
    }
    
    
    // TODO: Create a ViewModel and move implementation appropriately
    
//    private func fetchData() {
//        do {
//            self.items = try context.fetch(Recipe.fetchRequest())
//            DispatchQueue.main.async {
//                self.customCollectionView.reloadData()
//            }
//        } catch {
//            let error = error as NSError
//            print("Unknown Error \(error.userInfo)")
//        }
//    }
    
    
    // MARK: -- UI Elements --
    
    
    private let customCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return collectionView
    }()
    
    
    
}


extension HomeViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource
{
    
    private func registerCollectionView() {
        customCollectionView.register(FoodCollectionCell.self, forCellWithReuseIdentifier: FoodCollectionCell.identifier)
        customCollectionView.delegate = self
        customCollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
//        return viewModel.items?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FoodCollectionCell.identifier, for: indexPath) as! FoodCollectionCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width / 5 , height: collectionView.bounds.height)
    }
    
    
}


extension HomeViewController
{
    private func initializeConstraints() {
        customCollectionView.snp.makeConstraints { make in
            make.centerY.equalTo(view)
            make.trailing.equalTo(view)
            make.leading.equalTo(view)
            make.height.equalTo(100)
        }
    }
    
}
