//
//  SelectedItemViewController.swift
//  Black Oak
//
//  Created by Yash Patel on 13/03/22.
//

import UIKit
import SDWebImage

class SelectedItemViewController: UIViewController {
    
    var product: Product?
    
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemLbl: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    
    @IBOutlet weak var addToCart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addToCart.layer.cornerRadius = 6
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if (self.product != nil) && (self.product?.imageLink != nil) {
            self.itemImage.sd_setImage(with: URL(string: self.product!.imageLink), completed: nil)
        }
        self.title = product?.name
        itemLbl.text = product?.name
        itemPrice.text = "₹ \(String(product?.price ?? 0))"
        
    }
    
    
    @IBAction func addToCartTapped(_ sender: UIButton) {
        
        let addTocart:cartViewController = self.storyboard?.instantiateViewController(withIdentifier: "cartViewController") as! cartViewController
        
        self.navigationController?.pushViewController(addTocart , animated: true)
        
        if (product != nil) {
            productCart.append(product!)
        }
    }
    
}
