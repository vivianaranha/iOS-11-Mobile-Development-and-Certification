//
//  ViewController.swift
//  HelloAppSwift
//
//  Created by Vivian Herold Aranha on 3/30/18.
//  Copyright © 2018 Vivian Aranha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var textField = UITextField()
    var label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textField = UITextField(frame: CGRect(x: 10, y: 100, width: view.frame.size.width - 20, height: 40))
        textField.borderStyle = .roundedRect
        textField.placeholder = "Enter your name here"
        self.view.addSubview(textField)
        
        let button = UIButton(frame: CGRect(x: view.frame.size.width/2 - 50, y: 200, width: 100, height: 40))
        button.setTitleColor(.blue, for: .normal)
        button.setTitle("Click ME!!", for: .normal)
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        self.view.addSubview(button)
        
        
        label = UILabel(frame: CGRect(x: 100, y: 300, width: self.view.frame.size.width - 200, height: 50))
        label.textAlignment = .center
        label.text = "Welcome User!!!"
        self.view.addSubview(label)
        
    }
    
    @objc func buttonClick(){
        if let name = textField.text {
            label.text = "Welcome \(name)"
        } else {
            label.text = "Welcome Stranger"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

