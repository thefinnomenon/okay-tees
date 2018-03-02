//
//  DataService.swift
//  okay-tees
//
//  Created by Chris Finn on 3/2/18.
//  Copyright © 2018 Finnovation LLC. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "TANKS", imageName: "tanks.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png")
    ]
    
    private let hats = [
        Product(title: "Reflexion Queen", price: "$20", imageName: "hat01.jpg"),
        Product(title: "Reflexion King", price: "$20", imageName: "hat02.jpg"),
        Product(title: "Reflexion Beauty", price: "$20", imageName: "hat03.jpg"),
        Product(title: "Modern Zombies", price: "$20", imageName: "hat04.jpg")
    ]
    
    private let shirts = [
        Product(title: "Apollo Creed", price: "$20", imageName: "shirt01.jpg"),
        Product(title: "Reflexion Beast", price: "$15", imageName: "shirt02.jpg"),
        Product(title: "Chris Boshington", price: "$20", imageName: "shirt03.jpg"),
        Product(title: "Drum Solo", price: "$20", imageName: "shirt04.jpg"),
        Product(title: "Dwight Howard", price: "$20", imageName: "shirt05.jpg"),
        Product(title: "Food Fight Club", price: "$20", imageName: "shirt06.jpg"),
        Product(title: "Objects in Mirror", price: "$15", imageName: "shirt07.jpg"),
        Product(title: "I Love Vegans", price: "$20", imageName: "shirt08.jpg"),
        Product(title: "Goat Tee", price: "$20", imageName: "shirt09.jpg"),
    ]
    
    private let hoodies = [
        Product(title: "Modern Zombies", price: "$35", imageName: "hoodie01.jpg"),
        Product(title: "No Pain, No Grain", price: "$35", imageName: "hoodie02.jpg"),
        Product(title: "Join the Rebellion", price: "$35", imageName: "hoodie03.jpg"),
        Product(title: "Sink Full of Mayo", price: "$35", imageName: "hoodie04.jpg"),
        Product(title: "I Know Tofu", price: "$35", imageName: "hoodie05.jpg"),
    ]
    
    private let tanks = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "TANKS":
            return getTanks()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getTanks() -> [Product] {
        return tanks
    }
}
