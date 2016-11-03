//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Tanner Helton on 10/31/16.
//  Copyright © 2016 Tanner Helton. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtUsername: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let usernameReciever = segue.destination as! MainViewController
        usernameReciever.username = txtUsername.text
        let passwordReciever = segue.destination as! MainViewController
        passwordReciever.password = txtPassword.text
    }
}
