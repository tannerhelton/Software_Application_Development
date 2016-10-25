//
//  SecondViewController.swift
//  Data Over Segues
//
//  Created by Tanner Helton on 10/24/16.
//  Copyright © 2016 Tanner Helton. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var msg: String?
    
    @IBOutlet weak var lblMessage: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblMessage.text = msg
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let reciever2 = segue.destination as! ThirdViewController
        reciever2.msg2 = lblMessage.text
    }
}
