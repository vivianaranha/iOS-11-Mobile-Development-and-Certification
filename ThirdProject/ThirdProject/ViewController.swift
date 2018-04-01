//
//  ViewController.swift
//  ThirdProject
//
//  Created by Vivian Herold Aranha on 3/8/18.
//  Copyright © 2018 Vivian Aranha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func switchChanged(_ sender: Any) {
    
        if(mySwitch.isOn){
            view.backgroundColor = UIColor.green
        } else {
            view.backgroundColor = UIColor.red
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

