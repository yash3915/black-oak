//
//  ItemsViewController.swift
//  Black Oak
//
//  Created by Jay Patel on 05/03/22.
//

import UIKit
import SDWebImage


class ItemsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var itemCollectionView: UICollectionView!
    
    var categoryType: CategoryType = .Sofa
    var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        products = Product.getList().filter({ $0.category == self.categoryType });
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)

    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath) as! ItemCell
        cell.product = products[indexPath.row]
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width / 2 - 2, height: 200)
    }
        
    //space between rows top and bottom rows
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    
    //Space between cells in same row
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let itemSelect:SelectedItemViewController = self.storyboard?.instantiateViewController(withIdentifier: "SelectedItemViewController") as! SelectedItemViewController
        
        self.navigationController?.pushViewController(itemSelect, animated: true)
        
        itemSelect.mainImage = products.
    }
    
}


class ItemCell : UICollectionViewListCell {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSubTitle: UILabel!
    
    var product: Product? {
        didSet {
            lblTitle.text = product?.name
            lblSubTitle.text = "Rs \(product?.price ?? 0)"
            DispatchQueue.main.async {
                print(self.product!.imageLink)
                self.imgView.sd_setImage(with: URL(string: self.product!.imageLink), completed: nil)
            }
        }
    }
    
  }

