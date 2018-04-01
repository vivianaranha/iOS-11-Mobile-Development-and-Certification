//
//  ViewController.swift
//  SixthProject
//
//  Created by Vivian Herold Aranha on 3/19/18.
//  Copyright © 2018 Vivian Aranha. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let myURL = URL(string: "http://www.vivianaranha.com")
        let myRequest = URLRequest(url: myURL!)
        myWebView.load(myRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

