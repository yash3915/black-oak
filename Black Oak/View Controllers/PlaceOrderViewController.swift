//
//  PlaceOrderViewController.swift
//  Black Oak
//
//  Created by Yash Patel on 24/03/22.
//

import UIKit
import SDWebImage


class PlaceOrderViewController: UIViewController{
    
    @IBOutlet weak var itemPrice: UILabel!
    
    @IBOutlet weak var contactNumberTf: UITextField!
    
    @IBOutlet weak var postalCodeTf: UITextField!
    
    @IBOutlet weak var cardNumberTf: UITextField!
    
    @IBOutlet weak var expiryMonthTf: UITextField!
    
    @IBOutlet weak var expiryYearTf: UITextField!
    
    @IBOutlet weak var cvvTf: UITextField!
    
    @IBOutlet weak var buyNowButton: UIButton!
    
    @IBOutlet weak var errorLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buyNowButton.layer.cornerRadius = 8
        showError(nil, false)
        itemPrice.text = "\(productCart.map({ Int($0.price) }).reduce(0, +))"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
//        itemPrice.text = productCart.map(itemPrice)
        
    }
    
    func showError(_ message:String?, _ isShow: Bool){
        errorLable.text = message
        errorLable.alpha = isShow ? 1 : 0
    }
    
    @IBAction func buyNowTapped(_ sender: Any) {
        
        errorLable.alpha = 1
        
        showError(nil, false)

//        let contact = (contactNumberTf.text ?? "")!.trimmingCharacters(in: .whitespacesAndNewlines)
//        let postal = (postalCodeTf.text ?? "")!.trimmingCharacters(in: .whitespacesAndNewlines)
//        let cardNo = (cardNumberTf.text ?? "")!.trimmingCharacters(in: .whitespacesAndNewlines)
//        let expiryMonth = (expiryMonthTf.text ?? "")!.trimmingCharacters(in: .whitespacesAndNewlines)
//        let expiryYear = (expiryYearTf.text ?? "")!.trimmingCharacters(in: .whitespacesAndNewlines)
//        let cvv = (cvvTf.text ?? "")!.trimmingCharacters(in: .whitespacesAndNewlines)
        
//        let error = validateFields(contact,postal,cardNo,expiryMonth,expiryYear,cvv)
//
//        if error != nil {
//            showError(error!, true)
//            return
//        }
//        else{

            let sucess:PaymentPageViewController = self.storyboard?.instantiateViewController(withIdentifier: "PaymentPageViewController") as! PaymentPageViewController
            
            self.navigationController?.pushViewController(sucess, animated: true)
            
    }
    
    func validateFields(_ contact:String, _ postal:String,_ cardNo:String,_ expiryMonth:String,_ expiryYear:String,_ cvv:String) -> String? {
       
        let contact = (contactNumberTf.text ?? "")!.trimmingCharacters(in: .whitespacesAndNewlines)
        let postal = (postalCodeTf.text ?? "")!.trimmingCharacters(in: .whitespacesAndNewlines)
        let cardNo = (cardNumberTf.text ?? "")!.trimmingCharacters(in: .whitespacesAndNewlines)
        let expiryMonth = (expiryMonthTf.text ?? "")!.trimmingCharacters(in: .whitespacesAndNewlines)
        let expiryYear = (expiryYearTf.text ?? "")!.trimmingCharacters(in: .whitespacesAndNewlines)
        let cvv = (cvvTf.text ?? "")!.trimmingCharacters(in: .whitespacesAndNewlines)


//        Check the all fields are filled
        if contact.isEmpty{
            return "Please fill contact number field !"
        }
        if contact.count != 10 {
            return "Please enter valid contac number !"
        }
        if postal.isEmpty {
            return "Please fill postal code field !"
        }
        if postal.count != 6 {
            return "Please enter valid postal code !"
        }
        if cardNo.isEmpty {
            return "Please fill card number fields !"
        }
        if cardNo.count != 16 {
            return "Please enter valid card number !"
        }
        if expiryMonth.isEmpty{
            return "Please fill expiry month field !"
        }
        if expiryMonth.count != 2 {
            return "Please enter valid expiry month !"
        }
        if expiryYear.isEmpty {
            return "Please fill expiry year field !"
        }
        if expiryYear.count != 4 {
            return "Please enter valid expiry year !"
        }
        if cvv.isEmpty {
            return "Please fill CVV field !"
        }
        if cvv.count != 3 {
            return "Please enter valid CVV !"
        }
        return nil
    }
    
    }

