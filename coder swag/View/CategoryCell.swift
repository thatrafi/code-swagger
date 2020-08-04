//
//  CategoryCell.swift
//  coder swag
//
//  Created by rafiudin on 02/08/20.
//  Copyright © 2020 rafiudin. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryIMG : UIImageView!
    @IBOutlet weak var categoryTitle : UILabel!
    
    func updateViews(category : Category) {
        categoryIMG.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
