//
//  Category.swift
//  coder swag
//
//  Created by rafiudin on 02/08/20.
//  Copyright © 2020 rafiudin. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title : String
    private(set) public var imageName : String
    // to prevent categroy.title = "bla bla"
    // private setting , public getting
    init(title : String,imageName : String){
        self.title = title
        self.imageName = imageName
    }
}
