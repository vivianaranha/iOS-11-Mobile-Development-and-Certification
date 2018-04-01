//
//  ViewController.swift
//  Debugging
//
//  Created by Vivian Herold Aranha on 3/31/18.
//  Copyright © 2018 Vivian Aranha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let result = addTwoNumbers(a: 9, b: 4)
        print(result)
        
    }
    
    
    func addTwoNumbers(a:Int, b:Int) -> Int {
        let x = a
        let y = b
        let z = x + y
        return z
    }

}

