//
//  ViewController.swift
//  NavigationSwift
//
//  Created by Vivian Herold Aranha on 3/30/18.
//  Copyright © 2018 Vivian Aranha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = .red
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Second", style: .done, target: self, action: #selector(goToSecond))
        
        
    }
    
    @objc func goToSecond() {
        let mySecondViewController = SecondViewController()
        mySecondViewController.title = "Second"
        self.show(mySecondViewController, sender: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

