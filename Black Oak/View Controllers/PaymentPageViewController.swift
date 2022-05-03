//
//  PaymentPageViewController.swift
//  Black Oak
//
//  Created by Yash Patel on 23/03/22.
//

import UIKit

//OrderConfirmationVC
class PaymentPageViewController: UIViewController {

    @IBOutlet weak var gotoOrdersButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gotoOrdersButton.setTitle("  Go To Your Orders !", for: .normal)
        gotoOrdersButton.layer.cornerRadius = 6
    }
    

    @IBAction func gotoOrderTapped(_ sender: Any) {
        let yourOrders = self.storyboard?.instantiateViewController(withIdentifier: "OrdersViewController") as! OrdersViewController
            
        self.navigationController?.pushViewController(yourOrders , animated: true)
    }

//    @IBAction func gotoOrderTapped(_ sender: Any) {
//        let gotoProfile:ProfilePageViewController = self.storyboard?.instantiateViewController(withIdentifier: "ProfilePageViewController") as! ProfilePageViewController
//        self.navigationController?.pushViewController(gotoProfile, animated: true)
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
