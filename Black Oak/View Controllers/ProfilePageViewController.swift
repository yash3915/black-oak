//
//  ProfilePageViewController.swift
//  Black Oak
//
//  Created by Yash Patel on 17/02/22.
//

import UIKit
import Firebase
import FirebaseAuth

class ProfilePageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        emailLable.text = Auth.auth().currentUser?.email ?? "Not Found"
        
    }
    
    
    @IBOutlet weak var emailLable: UILabel!
    
    
    @IBAction func passwordReset(_ sender: Any) {
        
        gotorstpswdnvc()
        
    }
    
      @IBAction func logOutButtonTapped(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            gotoLoginvc()
        } catch  {
            print(error)
            //Show error
        }
    }
    
    
    func gotoLoginvc(){
        
        DispatchQueue.main.async {
            let loginVC = self.storyboard?.instantiateViewController(identifier: "LogInViewController") as! LogInViewController
            UIApplication.shared.windows.first?.rootViewController = loginVC
            UIApplication.shared.windows.first?.makeKeyAndVisible()
        }
    }
    
    func gotorstpswdnvc(){
        
        DispatchQueue.main.async {
            let pswdVC = self.storyboard?.instantiateViewController(identifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
            UIApplication.shared.windows.first?.rootViewController = pswdVC
            UIApplication.shared.windows.first?.makeKeyAndVisible()
        }
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
