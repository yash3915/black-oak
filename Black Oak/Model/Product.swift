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
    var price: Float
    
    static func getList() -> [Product] {
        
        let list = [Product(id: 1, name: "Sofa", size: ["25", "35"], colors: ["Red", "Black"], available: true, imageLink: "https://www.ikea.com/ca/en/images/products/millberget-swivel-chair-murum-black__1020142_pe831799_s5.jpg?f=xl", category: CategoryType.Sofa, price: 1000), Product(id: 2, name: "Chair", size: ["25", "35"], colors: ["White", "Gray"], available: true, imageLink: "https://www.ikea.com/ca/en/images/products/strandmon-armchair-nordvalla-dark-gray__0836849_pe601178_s5.jpg?f=xxs", category: CategoryType.Chair, price: 2500),Product(id: 3, name: "Cofee Table", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://www.ikea.com/ca/en/images/products/poaeng-armchair-birch-veneer-knisa-light-beige__0837298_pe666936_s5.jpg?f=xxs", category: CategoryType.Table,price: 1100),Product(id: 4, name: "Sofa", size: ["25", "35"], colors: ["Red", "Black"], available: true, imageLink: "https://www.ikea.com/ca/en/images/products/stefan-chair-brown-black__0870436_pe672126_s5.jpg?f=xxs", category: CategoryType.Sofa, price: 1200), Product(id: 5, name: "Chair", size: ["25", "35"], colors: ["White", "Gray"], available: true, imageLink: "https://www.ikea.com/ca/en/images/products/teodores-chair-white__0870808_pe716735_s5.jpg?f=xxs", category: CategoryType.Chair, price: 2500),Product(id: 6, name: "Cofee Table", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://www.ikea.com/ca/en/images/products/friheten-corner-sofa-bed-with-storage-skiftebo-dark-gray__0833845_pe603738_s5.jpg?f=xxs", category: CategoryType.Table,price: 3400),Product(id: 7, name: "Sofa", size: ["25", "35"], colors: ["Red", "Black"], available: true, imageLink: "https://www.ikea.com/ca/en/images/products/linanaes-sofa-with-chaise-vissle-dark-gray__1013909_pe829463_s5.jpg?f=xxs", category: CategoryType.Sofa, price: 1500), Product(id: 8, name: "Chair", size: ["25", "35"], colors: ["White", "Gray"], available: true, imageLink: "https://www.ikea.com/ca/en/images/products/kivik-sofa-with-chaise-hillared-anthracite__0777309_pe758514_s5.jpg?f=xxs", category: CategoryType.Chair, price: 2500),Product(id: 9, name: "Cofee Table", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://www.ikea.com/ca/en/images/products/finnala-sofa-gunnared-beige__0787232_pe763195_s5.jpg?f=xxs", category: CategoryType.Table,price: 4700)]
        return list;
    }
}


