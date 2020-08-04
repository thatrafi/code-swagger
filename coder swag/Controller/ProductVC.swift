//
//  ProductVC.swift
//  coder swag
//
//  Created by rafiudin on 04/08/20.
//  Copyright © 2020 rafiudin. All rights reserved.
//

import UIKit

class ProductVC: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    @IBOutlet weak var productCollection : UICollectionView!
    
    private(set) public var productData = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        productCollection.dataSource = self
        productCollection.delegate = self
    }
    
    
    func initProduct(category : Category){
         productData = DataService.instance.getProducts(ForCategoryName: category.title)
         navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = productData[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }else{
            return ProductCell()
        }
    }

}
