//
//  PaymentPageViewController.swift
//  Black Oak
//
//  Created by Yash Patel on 23/03/22.
//

import UIKit

class PaymentPageViewController: UIViewController {

    @IBOutlet weak var gotoOrdersButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gotoOrdersButton.setTitle("Go Home", for: .normal)
        gotoOrdersButton.layer.cornerRadius = 6

        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func gotoOrderTapped(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
//        let gotoOrder:OrdersViewController = self.storyboard?.instantiateViewController(withIdentifier: "OrdersViewController") as! OrdersViewController
//        self.navigationController?.pushViewController(gotoOrder, animated: true)
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
