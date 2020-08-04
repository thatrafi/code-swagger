//
//  DataService.swift
//  coder swag
//
//  Created by rafiudin on 02/08/20.
//  Copyright © 2020 rafiudin. All rights reserved.
//

import Foundation
class DataService {
    
    static let instance = DataService()
    // this is singelton instead we r creating for example
    //    func A {data = dataservice() data.getcat} func B {data = dataservice() data.getcat}
    //    we create func A {DataService.instance.getCatgeories()} func B {DataService.instance.getCatgeories()}
    //    which is only use single memory
    private let categories = [
         Category(title: "SHIRTS", imageName: "shirts.png"),
         Category(title: "HOODIES", imageName: "hoodies.png"),
         Category(title: "HATS", imageName: "hats.png"),
         Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslope Logo Benie Black", price: "$18", image: "hat01.jpg"),
        Product(title: "Devslope Logo Hat Black 2", price: "$22", image: "hat02.jpg"),
        Product(title: "Devslope Logo Hat Black 2 White", price: "$22", image: "hat03.jpg"),
        Product(title: "Devslope Logo Hat Black New", price: "$30", image: "hat04.jpg")
    ]
    
    private let hoodies = [
        Product(title: "Devslope Logo Hoodie Black", price: "$32", image: "hoodie01.jpg"),
        Product(title: "Devslope Logo Hoodie Red", price: "$32", image: "hoodie02.jpg"),
        Product(title: "Devslope Logo Hoodie Grey", price: "$32", image: "hoodie03.jpg"),
        Product(title: "Devslope Logo Hoodie New Black", price: "$35", image: "hoodie04.jpg")
    ]
    
    private let shirts = [
        Product(title: "Devslope Logo Shirt Black", price: "$20", image: "shirt01.jpg"),
        Product(title: "Devslope Logo Shirt White", price: "$20", image: "shirt02.jpg"),
        Product(title: "Devslope Logo Shirt Red", price: "$20", image: "shirt03.jpg"),
        Product(title: "Devslope Logo Shirt Grey", price: "$20", image: "shirt04.jpg"),
        Product(title: "Devslope Logo Shirt New Black", price: "$25", image: "shirt05.jpg")
    ]
    
    private let digitalGoods = [Product]()
    
    func getProducts(ForCategoryName title : String) -> [Product]{
        switch title {
        case "SHIRTS":
            return shirts
        case "HATS":
            return hats
        case "HOODIES":
            return hoodies
        case "DIGITAL":
            return digitalGoods
        default:
            return shirts
        }
    }
    
    
    func getCatgeories() -> [Category] {
        return categories
    }
}
