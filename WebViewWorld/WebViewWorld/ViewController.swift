//
//  ViewController.swift
//  WebViewWorld
//
//  Created by Vivian Herold Aranha on 3/30/18.
//  Copyright © 2018 Vivian Aranha. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    var myWebView = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myWebView = WKWebView(frame: CGRect(x: 0, y: 20, width: self.view.frame.size.width, height: self.view.frame.size.height - 20))
        
        self.view.addSubview(myWebView)
        
        let url = URL(string: "https://www.apple.com")
        let urlRequest = URLRequest(url: url!)
        myWebView.load(urlRequest)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

