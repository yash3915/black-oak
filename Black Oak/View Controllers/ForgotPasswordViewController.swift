//
//  ForgotPasswordViewController.swift
//  Black Oak
//
//  Created by Yash Patel on 16/02/22.
//

import UIKit
import FirebaseAuth

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var errorLable: UILabel!
    
    @IBOutlet weak var sendMail: UIButton!
    
    @IBOutlet weak var gotoLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        UINavigationBar.appearance().barTintColor = UIColor.whiteColor


        sendMail.layer.cornerRadius = 6

        if Auth.auth().currentUser != nil  
        {
            gotoLogin.alpha=0
        }
            
        setUpElements()
        // Do any additional setup after loading the view.
    }
    
    func setUpElements(){
        
        errorLable.alpha=0
        
    }
    
    @IBAction func sendMailTapped(_ sender: Any)
    {
        self.errorLable.alpha = 0

        
        let email = (emailTextField.text ?? "")!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        Auth.auth().sendPasswordReset(withEmail: emailTextField.text!) { (error) in
            if error != nil{
                self.errorLable.text = error!.localizedDescription
                self.errorLable.alpha = 1
            }
            else{
                self.errorLable.text = "Password Reset mail sent !"
                self.errorLable.alpha = 1
            }
        }
    }
    
    @IBAction func gotoLoginPage(_ sender: Any) {
        let signIn:LogInViewController = self.storyboard?.instantiateViewController(withIdentifier: "LogInViewController") as! LogInViewController
        
        self.navigationController?.pushViewController(signIn, animated: true)

    }
}
