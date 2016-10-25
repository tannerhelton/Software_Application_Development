//
//  ViewController.swift
//  Data Over Segues
//
//  Created by Tanner Helton on 10/24/16.
//  Copyright © 2016 Tanner Helton. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var msg3: String?
    
    @IBOutlet weak var txtMessage: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        txtMessage.text = msg3
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let reciever = segue.destination as! SecondViewController
        reciever.msg = txtMessage.text
    }
}

