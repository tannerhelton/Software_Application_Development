//
//  ViewController.swift
//  JSON
//
//  Created by Tanner Helton on 11/3/16.
//  Copyright © 2016 Tanner Helton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var people: NSArray = []
    var peopleIndex = 0
    
    @IBOutlet weak var firstname: UITextField!
    @IBOutlet weak var lastname: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var ram: UITextField!
    @IBOutlet weak var cores: UITextField!
    
    func getSheet(url: String) {
        let url = URL(string: url)
        
        let task = URLSession.shared.dataTask(with: url!) { data, response, error in
            guard error == nil else {
                print(error!)
                return
            }
            
            guard let data = data else {
                print("Data is empty")
                return
            }
            
            let json = try! JSONSerialization.jsonObject(with: data, options: []) as! Dictionary<String, AnyObject>
            
            //callback(json)
            self.people = json["0"] as! NSArray
            self.uiPump()
        }
        
        task.resume()
    }
    
    func uiPump() {
        let person = people[peopleIndex] as! Dictionary<String, AnyObject>
        let fname = person["FirstName"]
//        let lname = person["gsx$lastname"]!["$t"]!
//        let email = person["gsx$email"]!["$t"]!
//        let age = person["gsx$age"]!["$t"]!
//        let ram = person["gsx$ram"]!["$t"]!
//        let cores = person["gsx$cores"]!["$t"]!
        
        // instantly update the UI
        DispatchQueue.main.async(execute: {
            self.firstname.text = "First Name: \(fname)"
//            self.lastname.text = "Last Name: \(lname!)"
//            self.email.text = "Email: \(email!)"
//            self.age.text = "Age: \(age!)"
//            self.ram.text = "RAM (GB): \(ram!)"
//            self.cores.text = "Cores: \(cores!)"
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let sheet = "http://10.10.96.119/index.php"
        getSheet(url: sheet)
    }
    
    @IBAction func btnBack(_ sender: UIButton) {
        if peopleIndex == 0 {
            peopleIndex = people.count - 1
        } else {
            peopleIndex -= 1
        }
        print(peopleIndex)
        let sheet = "http://10.10.96.119/index.php"
        getSheet(url: sheet)
        uiPump()
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        if peopleIndex == people.count - 1 {
            peopleIndex = 0
        } else {
            peopleIndex += 1
        }
        print(peopleIndex)
        let sheet = "http://10.10.96.119/index.php"
        getSheet(url: sheet)
        uiPump()
    }
}
