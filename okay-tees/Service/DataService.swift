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
    
    func getCategories() -> [Category] {
        return categories
    }
}
