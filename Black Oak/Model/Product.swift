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
    case Bed
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
        
        let list = [Product(id: 1, name: "Sofa", size: ["25", "35"], colors: ["Red", "Black"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/backsaelen-2-seat-sofa-hallarp-grey__0950622_pe800551_s5.jpg?f=xxs", category: CategoryType.Sofa, price: 35000), Product(id: 2, name: "Chair", size: ["25", "35"], colors: ["White", "Gray"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/strandmon-wing-chair-grey__0973258_pe811962_s5.jpg?f=xxs", category: CategoryType.Chair, price: 15900),Product(id: 3, name: "Cofee Table", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/lack-coffee-table-black-brown__0835835_pe601383_s5.jpg?f=xxs", category: CategoryType.Table,price: 1100),Product(id: 25, name: "Bed", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/songesand-bed-frame-with-2-storage-boxes-brown-luroey__0734672_pe739568_s5.jpg?f=xl", category: CategoryType.Bed,price: 26550),Product(id: 4, name: "Blue Sofa", size: ["25", "35"], colors: ["Red", "Black"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/ormaryd-3-seat-sofa-dark-blue__0919664_pe786704_s5.jpg?f=xxs", category: CategoryType.Sofa, price: 12000), Product(id: 5, name: "Grey Chair", size: ["25", "35"], colors: ["White", "Gray"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/skruvsta-swivel-chair-vissle-grey__0923961_pe788457_s5.jpg?f=xxs", category: CategoryType.Chair, price: 2500),Product(id: 6, name: "Cofee Table", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/vittsjoe-coffee-table-black-brown-glass__0836655_pe601386_s5.jpg?f=xxs", category: CategoryType.Table,price: 3400),Product(id: 7, name: "Grey Sofa", size: ["25", "35"], colors: ["Red", "Black"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/klippan-2-seat-sofa-vissle-grey__0820948_pe709146_s5.jpg?f=xxs", category: CategoryType.Sofa, price: 15700), Product(id: 8, name: "Red Chair", size: ["25", "35"], colors: ["White", "Gray"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/gammalbyn-armchair-red__0864946_pe781304_s5.jpg?f=xxs", category: CategoryType.Chair, price: 10900),Product(id: 9, name: "Cofee Table", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/nyboda-coffee-table-w-reversible-table-top-dark-grey-concrete-effect-black__0766530_pe753815_s5.jpg?f=xxs", category: CategoryType.Table,price: 4700),Product(id: 10, name: "Red Sofa", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/gammalbyn-3-seat-sofa-red__0868919_pe781429_s5.jpg?f=xxs", category: CategoryType.Sofa,price: 19900),Product(id: 11, name: "Blue Sofa", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/friheten-corner-sofa-bed-with-storage-skiftebo-blue__0690241_pe723168_s5.jpg?f=xxs", category: CategoryType.Sofa,price: 54990),Product(id: 12, name: "Brown Sofa", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/vallentuna-modular-crnr-sofa-3-seat-2-sofa-bed-and-storage-kelinge-rust__0966559_pe809852_s5.jpg?f=xxs", category: CategoryType.Sofa,price: 88000),Product(id: 13, name: "Blue Sofa", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/vimle-3-seat-sofa-saxemara-light-blue__0949437_pe799723_s5.jpg?f=xxs", category: CategoryType.Sofa,price: 28900),Product(id: 14, name: "Grey Sofa", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSB83UizDpmUJT761m9yqSpmbiqG8Merop_ekrZMTq0J7G4Py2ZuBoMdAgvVAAKAb83OdiqoOOZqwNi7SvqtLZ6MFEcfNr43di7nnVp3du9&usqp=CAc", category: CategoryType.Sofa,price: 30799),Product(id: 15, name: "Grey Sofa", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRrhGgCME_-DykOBTECTNHaFXB8JmUb3RlCh7cdwqOKDwLyREcDQp8CI6V0bxk_dIgvhAjdp9oHqFuDXzmo6-sJczZQoquTwGhkx7emIEw&usqp=CAE", category: CategoryType.Sofa,price: 34872),Product(id: 16, name: "Grey Sofa", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQNyJ7nn_zDfrrnylJqRsgi0AlueAAl9hBjDTHK0AwTzX-XMMl8rSpoODKrusKrYH8KIZIbo3p-zWzrEQD1fadkz8TZGfzMRqGDT57KTCY&usqp=CAE", category: CategoryType.Sofa,price: 42790), Product(id: 17, name: "Black Chair", size: ["25", "35"], colors: ["White", "Gray"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/gammalbyn-armchair-black__1030899_pe836429_s5.jpg?f=xl", category: CategoryType.Chair, price: 14990), Product(id: 18, name: "Black Chair", size: ["25", "35"], colors: ["White", "Gray"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/gistad-recliner-bomstad-black__0805112_pe769444_s5.jpg?f=xxs", category: CategoryType.Chair, price: 19900), Product(id: 19, name: "White Chair", size: ["25", "35"], colors: ["White", "Gray"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/gammalbyn-armchair-beige__0864925_pe781284_s5.jpg?f=xl", category: CategoryType.Chair, price: 15900), Product(id: 20, name: "Yellow Chair", size: ["25", "35"], colors: ["White", "Gray"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/bingsta-armchair-vissle-dark-yellow-kabusa-dark-yellow__0761761_pe751429_s5.jpg?f=xxs", category: CategoryType.Chair, price: 15900),Product(id: 21, name: "Cofee Table", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/vittsjoe-nest-of-tables-set-of-2-black-brown-glass__0836370_pe601384_s5.jpg?f=xxs", category: CategoryType.Table,price: 17000),Product(id: 22, name: "Cofee Table", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/liatorp-coffee-table-white-glass__0836290_pe601395_s5.jpg?f=xxs", category: CategoryType.Table,price: 13900),Product(id: 23, name: "Cofee Table", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/havsta-nest-of-tables-set-of-2-white__0724444_pe734407_s5.jpg?f=xxs", category: CategoryType.Table,price: 8990),Product(id: 24, name: "Cofee Table", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/lack-coffee-table-black-brown__0835835_pe601383_s5.jpg?f=xxs", category: CategoryType.Table,price: 12550),Product(id: 26, name: "Grey Bed", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/songesand-bed-frame-with-2-storage-boxes-brown-luroey__0800862_ph162917_s5.jpg?f=xl", category: CategoryType.Bed,price: 30550),Product(id: 27, name: "Brown Bed", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/songesand-bed-frame-with-4-storage-boxes-white-loenset__0734692_pe739587_s5.jpg?f=xl", category: CategoryType.Bed,price: 42700),Product(id: 28, name: "White Bed", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/askvoll-bed-frame-white-luroey__0373217_ph123230_s5.jpg?f=xl", category: CategoryType.Bed,price: 38760),Product(id: 29, name: "Pink Bed", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/idanaes-upholstered-ottoman-bed-gunnared-pale-pink__1079005_pe857429_s5.jpg?f=xxs", category: CategoryType.Bed,price: 49700),Product(id: 30, name: "Green Bed", size: ["25", "35"], colors: ["Blue", "Black"], available: true, imageLink: "https://www.ikea.com/in/en/images/products/tufjord-upholstered-bed-frame-djuparp-dark-green__0966517_ph175096_s5.jpg?f=xl", category: CategoryType.Bed,price: 52900)]
        return list;
    }
}


