//
//  LogInViewController.swift
//  Black Oak
//
//  Created by Yash Patel on 09/10/21.
//

import UIKit
import FirebaseAuth

class LogInViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    
    @IBOutlet weak var errorLable: UILabel!
    
    override func viewDidLoad() {
        
        
        logInButton.layer.cornerRadius = 6
        
        super.viewDidLoad()
        
        setUpElements()
        
        // Do any additional setup after loading the view.
    }
    
    func validateFields(_ email:String,_ password:String) -> String? {
        
        let email = (emailTextField.text ?? "")!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordTextField.text ?? ""

//        Check the all fields are filled
        if email.isEmpty {
            return "Please fill all the fields"
        }
        if password.isEmpty {
            return "Please fill all the fields"
        }
        
        if !Utilities.isPasswordValid(password) {
//            Password isn't secure
            return "Please make sure your password is at least 8 characters, contains a special character and a number."
        }
        
        return nil
    }
    
    func setUpElements(){
        errorLable.alpha = 0
    }
    
    @IBAction func forgotTapped(_ sender: Any) {
    
        let resetPswd:ForgotPasswordViewController = self.storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
        
        self.navigationController?.pushViewController(resetPswd, animated: true)
        
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        
        let email = (emailTextField.text ?? "")!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordTextField.text ?? ""
        self.errorLable.alpha = 0

        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            
            if error != nil{
                self.errorLable.text = error!.localizedDescription
                self.errorLable.alpha = 1
            }
            else{
                self.gotoHomeScreen()
            }
        }
        
    }
    
    @IBAction func signUpPage(_ sender: Any) {
        let signUp:SignUpViewController = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        
        self.navigationController?.pushViewController(signUp, animated: true)

    }
    
    func gotoHomeScreen()
    {
        
        DispatchQueue.main.async {
            let viewController = self.storyboard?.instantiateViewController(withIdentifier: "HomeTabBarVC") as! UITabBarController
            UIApplication.shared.windows.first?.rootViewController = viewController
            UIApplication.shared.windows.first?.makeKeyAndVisible()
        }
        
    }

    
    
}
