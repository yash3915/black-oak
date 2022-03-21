//
//  SelectedItemViewController.swift
//  Black Oak
//
//  Created by Yash Patel on 13/03/22.
//

import UIKit

class SelectedItemViewController: UIViewController {
    
    var mainImage:UIImage!
    var mainLbl:String!
    var mainPrice:Float!
    
    @IBOutlet weak var itemImage: UIImageView!
    
    @IBOutlet weak var itemLbl: UILabel!

    @IBOutlet weak var itemPrice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemImage.image=mainImage
        itemLbl.text=mainLbl
        itemPrice.text=mainPrice

        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
