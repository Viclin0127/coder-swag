//
//  DataService.swift
//  coder-swag
//
//  Created by YuanHungLin on 2019/1/11.
//  Copyright © 2019 linyuanhung. All rights reserved.
//

import Foundation


class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslope Logo Graphic Beanie", price: "$18", imageName: "hat01.jpg"),
        Product(title: "Devslope Logo Hat Black", price: "$25", imageName: "hat02.jpg"),
        Product(title: "Devslope Logo White", price: "$31", imageName: "hat03.jpg"),
        Product(title: "Devslope Logo Snapback", price: "$20", imageName: "hat04.jpg")
    ]
    
    private let hoodies = [
        Product(title: "Devslope Logo Hoodies Gray", price: "$32", imageName: "hoodie01.jpg"),
        Product(title: "Devslope Logo Hoodies Red", price: "$32", imageName: "hoodie02.jpg"),
        Product(title: "Devslope Hoodies Gray", price: "$32", imageName: "hoodie03.jpg"),
        Product(title: "Devslope Logo Hoodies Black", price: "$32", imageName: "hoodie04.jpg")
    ]
    
    private let shirts = [
        Product(title: "Devslope Logo Shirt Black", price: "$18", imageName: "shirt01.jpg"),
        Product(title: "Devslope Badge Light Gray", price: "$18", imageName: "shirt02.jpg"),
        Product(title: "Devslope Logo Shirt Red", price: "$19", imageName: "shirt03.jpg"),
        Product(title: "Hustle Delegate Grey", price: "$25", imageName: "shirt04.jpg"),
        Product(title: "Kickflip Studios Black", price: "$18", imageName: "shirt05.jpg")
    ]
    
    private let digitalGoods = [Product]() // 不可以宣告一個nil的array
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product]{
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product]{
        return hats
    }
    
    func getHoodies() -> [Product]{
        return hoodies
    }
    
    func getShirts() -> [Product]{
        return shirts
    }
    
    func getDigitalGoods() -> [Product]{
        return digitalGoods
    }
}
