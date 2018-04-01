//
//  ViewController.swift
//  HelloApp
//
//  Created by Vivian Herold Aranha on 3/30/18.
//  Copyright © 2018 Vivian Aranha. All rights reserved.
//

import UIKit

import WebKit

class ViewController: UIViewController {
    
    
    var webView = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /* Nav BAr */
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(goToNextVC))
        
        /* Nav BAr */
        
        
        webView = WKWebView(frame: CGRect(x: 0, y: 20, width: self.view.frame.size.width, height: self.view.frame.size.height))
        
        view.addSubview(webView)
        
        let url = URL(string: "https://www.apple.com")
        let urlRequest = URLRequest(url: url!)
        webView.load(urlRequest)
        
    }
    
    @objc func goToNextVC() {
        let mySecondViewController = SecondViewController()
        mySecondViewController.title = "Second"
        self.show(mySecondViewController, sender: nil)
    }
    
  
    
    /* WebView */
}

