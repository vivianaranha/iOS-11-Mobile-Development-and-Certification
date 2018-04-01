//
//  ViewController.swift
//  FirstProject
//
//  Created by Vivian Herold Aranha on 3/6/18.
//  Copyright © 2018 Vivian Aranha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTxtField: UITextField!
    @IBOutlet weak var myGoButton: UIButton!
    @IBOutlet weak var welcomeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func btnClicked(_ sender: Any) {
        
        if let myName = nameTxtField.text {
            welcomeLabel.text = "Welcome \(myName)"
        }
        
        //nameTxtField.resignFirstResponder()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    


}

