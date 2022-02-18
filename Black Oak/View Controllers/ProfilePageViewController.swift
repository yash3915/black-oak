//
//  ProfilePageViewController.swift
//  Black Oak
//
//  Created by Yash Patel on 17/02/22.
//

import UIKit
import Firebase

class ProfilePageViewController: UIViewController {

    override func viewDidLoad() {
       
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logOutButtonTapped(_ sender: Any) {
        
        gotoLoginvc()
        
    }
    
    func gotoLoginvc(){
        DispatchQueue.main.async {
            let loginVC = self.storyboard?.instantiateViewController(identifier: "LogInViewController") as! LogInViewController
            UIApplication.shared.windows.first?.rootViewController = loginVC
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
