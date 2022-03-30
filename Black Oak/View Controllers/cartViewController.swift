//
//  cartViewController.swift
//  Black Oak
//
//  Created by Yash Patel on 14/03/22.
//

import UIKit
import SDWebImage

var productCart = [Product]()

class cartViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var cartCollectionView: UICollectionView!
    
    @IBOutlet weak var cartEmptyLbl: UILabel!
    
//
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if(productCart.count>0)
        {
            self.cartEmptyLbl.alpha = 0
        }
        else
        {
            self.cartEmptyLbl.alpha = 1
                
        }
        
        if(productCart.count>0)
        {
            self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "Buy Now", style: .plain, target: self, action: #selector(buyNow(sender:)))

        }
        
            
        // Do any additional setup after loading the view.
        }
        
        
        @objc func buyNow(sender:UIBarButtonItem) {
            
            
            let placeOrder:PlaceOrderViewController = self.storyboard?.instantiateViewController(withIdentifier: "PlaceOrderViewController") as! PlaceOrderViewController
            
            self.navigationController?.pushViewController(placeOrder , animated: true)
        }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productCart.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CartItemID", for: indexPath) as! CartItemCollectionViewCell
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


class CartItemCollectionViewCell : UICollectionViewCell {
    
    @IBOutlet weak var ivProduct:UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSubtitle:UILabel!
    
    
    var product: Product? {
        didSet {
            lblTitle.text = product?.name
            lblSubtitle.text = "Rs. \(product?.price ?? 0)"
            DispatchQueue.main.async {
                print(self.product!.imageLink)
                self.ivProduct.sd_setImage(with: URL(string: self.product!.imageLink), completed: nil)
            }
        }
    }
    
}
