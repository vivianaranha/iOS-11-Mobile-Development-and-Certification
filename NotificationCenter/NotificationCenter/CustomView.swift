//
//  CustomView.swift
//  NotificationCenter
//
//  Created by Vivian Herold Aranha on 3/31/18.
//  Copyright © 2018 Vivian Aranha. All rights reserved.
//

import UIKit

class CustomView: UIView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapped))
        tapGesture.numberOfTapsRequired = 1
        self.isUserInteractionEnabled = true
        self.addGestureRecognizer(tapGesture)
        
        NotificationCenter.default.addObserver(self, selector: #selector(theNotification(notification:)), name: NSNotification.Name(rawValue: "myNotification"), object: nil)
        
    }
    
    @objc func tapped() {
        print("I am Tapped inside View")
        
        NotificationCenter.default.post(name: Notification.Name(rawValue: "myNotification"), object: self)
    }
    
    @objc func theNotification(notification:NSNotification) {
        print("Received Notification Inside: \(notification.name)")
        let theView = notification.object as! CustomView
        self.backgroundColor = theView.backgroundColor
    }
    
    
    
}
