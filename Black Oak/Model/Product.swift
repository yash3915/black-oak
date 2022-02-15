//
//  Product.swift
//  Black Oak
//
//  Created by Jay Patel on 15/02/22.
//

import Foundation


enum CategoryType {
    case Sofa
    case Chair
    case Table
}
struct Product {
    var id: Int
    var name: String
    var size: [String]
    var colors: [String]
    var available: Bool
    var imageLink: String
    var category: CategoryType
    
    static func getList() -> [Product] {
        
        let list = [Product(id: 1, name: "Sofa", size: ["25", "35"], colors: ["Red", "Black"], available: true, imageLink: "", category: CategoryType.Sofa), Product(id: 2, name: "Sofa", size: ["25", "35"], colors: ["Red", "Black"], available: true, imageLink: "", category: CategoryType.Sofa)]
        return list;
    }
}


