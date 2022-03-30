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

    @IBOutlet weak var signOut: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        emailLable.text = Auth.auth().currentUser?.email ?? "Not Found"
        signOut.layer.cornerRadius = 6

        
    }
    
    
    @IBOutlet weak var emailLable: UILabel!
    
    
    @IBAction func passwordReset(_ sender: Any) {
        
        gotorstpswdnvc()
        
    }
    
    @IBAction func orders(_ sender: Any) {
        
        
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
            let resetPswd:ForgotPasswordViewController = self.storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
            
            self.navigationController?.pushViewController(resetPswd, animated: true)
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
