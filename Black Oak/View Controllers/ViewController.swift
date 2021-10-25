//
//  ViewController.swift
//  Black Oak
//
//  Created by Yash Patel on 09/10/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var SignInButton: UIButton!
    
    @IBOutlet weak var SignUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        SignInButton.layer.cornerRadius = 6
        SignUpButton.layer.cornerRadius = 6
    }


}

