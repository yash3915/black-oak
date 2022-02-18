//
//  SignUpViewController.swift
//  Black Oak
//
//  Created by Yash Patel on 09/10/21.
//

import UIKit
import Firebase
import FirebaseAuth

class SignUpViewController: UIViewController {

   
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var errorLable: UILabel!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    
    
    override func viewDidLoad() {
        signUpButton.layer.cornerRadius = 6

        super.viewDidLoad()
        showError(nil, false)
        // Do any additional setup after loading the view.
    }

//    Check the fields and validate that.If everything is right it return nill.Otherwise it return Error Mg.
    func validateFields(_ name:String, _ email:String,_ password:String) -> String? {
        let name = (nameTextField.text ?? "")!.trimmingCharacters(in: .whitespacesAndNewlines)
        let email = (emailTextField.text ?? "")!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordTextField.text ?? ""

//        Check the all fields are filled
        if name.isEmpty {
            return "Please fill all the fields"
        }
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

    
    @IBAction func signUpTapped(_ sender: Any) {
        showError(nil, false)
        let name = (nameTextField.text ?? "")!.trimmingCharacters(in: .whitespacesAndNewlines)
        let email = (emailTextField.text ?? "")!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordTextField.text ?? ""
        self.errorLable.alpha = 0

        
//        Valid the fields
        let error = validateFields(name, email, password)
        
        if error != nil {
            showError(error!, true)
            return
        }
        else{
//            Create user
            Auth.auth().createUser(withEmail: email, password: password) { result,error in
                guard let user = result?.user, error == nil else {
                self.showError(error?.localizedDescription ?? "Error creating user", true)
                return
               }
               print("\(user.email!) created")
    //                    User created successfully
                let db = Firestore.firestore()
                let userData = ["name": name, "email": email, "password": password]
                db.collection("users").addDocument(data: userData) { error2 in
                    if error2 != nil{
                        self.showError(error2?.localizedDescription ?? "Error creating user", true)
                        return
                    }
                    self.gotoHomeScreen()
                }
            }
//            Transition to the home screen
        }
    }
    
    func showError(_ message:String?, _ isShow: Bool){
        errorLable.text = message
        errorLable.alpha = isShow ? 1 : 0
    }
    
    func gotoHomeScreen()
    {
        DispatchQueue.main.async {
            let homeVC = self.storyboard?.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
            self.navigationController?.pushViewController(homeVC, animated: true)
        }
        
    }
}
