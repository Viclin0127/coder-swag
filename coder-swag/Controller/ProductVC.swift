//
//  ProductVC.swift
//  coder-swag
//
//  Created by YuanHungLin on 2019/1/27.
//  Copyright © 2019 linyuanhung. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var productsCollection: UICollectionView!
    
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsCollection.dataSource = self
        productsCollection.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func initProduct(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title  // 用來調整NavigationBar 上面的標題
        //navigationItem.backBarButtonItem 適用在前一個頁面(CategoriesVC)
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        return ProductCell()
    }
    
    
}
