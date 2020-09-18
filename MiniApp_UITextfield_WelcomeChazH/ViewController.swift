//
//  ViewController.swift
//  MiniApp_UITextfield_WelcomeChazH
//
//  Created by Tiger Coder on 9/9/20.
//  Copyright © 2020 clc.handley. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var helloTxtBox: UILabel!
    @IBOutlet weak var submitBtn: UIButton!
    @IBOutlet weak var field: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitBtnAction(_ sender: UIButton) {
        let name = field.text!
        helloTxtBox.text = "Hello, \(name)"
        field.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        field.resignFirstResponder()
        let name = field.text!
        helloTxtBox.text = "Hello, \(name)"
        return true
    }
    
    
    
    
    

}

