//
//  ProductsViewController.swift
//  Black Oak
//
//  Created by Yash Patel on 16/02/22.
//

import UIKit

class ProductsViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    var arrimg : [UIImage] = [
        UIImage(named: "chair1.jpg")!,
        UIImage(named: "chair2.jpg")!,
        UIImage(named: "chair3.jpg")!,
        UIImage(named: "chair4.jpg")!,
        UIImage(named: "chair5.jpg")!,
        UIImage(named: "chair6.jpg")!,
        UIImage(named: "chair7.jpg")!,
        UIImage(named: "chair8.jpg")!,
        UIImage(named: "chair9.jpg")!,
        UIImage(named: "chair10.jpg")!
    ]
    
    var arrlbl = ["chair1","chair2","chair3","chair4","chair5","chair6","chair7","chair8","chair9","chair10"]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return arrlbl.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt IndexPath: IndexPath) -> UICollectionViewCell{
        
        let cell:CollectionViewCell= collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!
        
        return
    }

}
