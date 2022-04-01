//
//  OrdersViewController.swift
//  Black Oak
//
//  Created by Yash Patel on 27/03/22.
//

import UIKit
import SDWebImage

class OrdersViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var ordersCollectionView: UICollectionView!
    
    @IBOutlet weak var orderEmpty: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        if(productCart.count>0)
        {
            self.orderEmpty.alpha = 0

        }
        else
        {
            self.orderEmpty.alpha = 1
        }
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productCart.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OrderItemID", for: indexPath) as! orderItemCollectionViewCell
        cell.product = productCart[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 150)
    }
        
    //space between rows top and bottom rows
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    //Space between cells in same row
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
   
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let itemSelect:SelectedItemViewController = self.storyboard?.instantiateViewController(withIdentifier: "SelectedItemViewController") as! SelectedItemViewController
        itemSelect.product = productCart[indexPath.row]
        self.navigationController?.pushViewController(itemSelect, animated: true)
    }
    
}

class orderItemCollectionViewCell : UICollectionViewCell {
    
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemPrice: UILabel!
    @IBOutlet weak var itemName: UILabel!
    
    var product: Product? {
        didSet {
            itemName.text = product?.name
            itemPrice.text = "Rs. \(product?.price ?? 0)"
//            DispatchQueue.main.async {
//                print(self.product!.imageLink)
//                self.itemImage.sd_setImage(with: URL(string: self.product!.imageLink), completed: nil)
//            }
        }
    }
    
}
