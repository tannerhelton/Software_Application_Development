//
//  ThirdViewController.swift
//  Data Over Segues
//
//  Created by Tanner Helton on 10/24/16.
//  Copyright © 2016 Tanner Helton. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var msg2: String?
    
    @IBOutlet weak var txtLabel3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        txtLabel3.text = msg2
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let reciever3 = segue.destination as! MainViewController
        reciever3.msg3 = txtLabel3.text
    }
}
