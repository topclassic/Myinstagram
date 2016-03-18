//
//  ViewController.swift
//  Myinstagram
//
//  Created by WebEngineering on 3/17/2559 BE.
//  Copyright © 2559 S Wangkajai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textUsername: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var textConfirm: UITextField!
    @IBOutlet weak var textEmail: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func butSingup(sender: AnyObject) {
        
        if textPassword.text == textConfirm.text{
            let kumulosAPI = Kumulos()
            kumulosAPI.createUserWithUsername(textUsername.text, andPassword: textPassword.text, andEmail: textEmail.text, andAuthData: "test")
        }
        
    }

    
    @IBAction func butCancel(sender: AnyObject) {
        textUsername.text = ""
        textPassword.text = ""
        textConfirm.text = ""
        textEmail.text = ""
        
    }
}

