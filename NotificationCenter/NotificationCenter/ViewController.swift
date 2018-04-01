//
//  ViewController.swift
//  NotificationCenter
//
//  Created by Vivian Herold Aranha on 3/31/18.
//  Copyright © 2018 Vivian Aranha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(theNotification(notification:)), name: NSNotification.Name(rawValue: "myNotification"), object: nil)
    
        let redView = CustomView(frame: CGRect(x: 10, y: 100, width: 100, height: 100))
        redView.backgroundColor = .red
        view.addSubview(redView)
        
        let greenView = CustomView(frame: CGRect(x: 155, y: 100, width: 100, height: 100))
        greenView.backgroundColor = .green
        view.addSubview(greenView)
        
        let blueView = CustomView(frame: CGRect(x: 300, y: 100, width: 100, height: 100))
        blueView.backgroundColor = .blue
        view.addSubview(blueView)
        
    }
    
    @objc func theNotification(notification:NSNotification) {
        print("Received Notification: \(notification.name)")
        let theView = notification.object as! CustomView
        self.view.backgroundColor = theView.backgroundColor
    }


}

