//
//  ProductCell.swift
//  coder swag
//
//  Created by rafiudin on 03/08/20.
//  Copyright © 2020 rafiudin. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage : UIImageView!
    @IBOutlet weak var productTitle : UILabel!
    @IBOutlet weak var productPrice : UILabel!

    func updateViews(product : Product){
        productImage.image = UIImage(named: product.image)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}
