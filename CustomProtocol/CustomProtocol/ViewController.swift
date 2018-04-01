//
//  ViewController.swift
//  CustomProtocol
//
//  Created by Vivian Herold Aranha on 3/31/18.
//  Copyright © 2018 Vivian Aranha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CustomViewDelegate {
    
    func sendMeColor(color: UIColor) {
        self.view.backgroundColor = color
    }
    
    func tapOccured() {
        print("Tapped in VC")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let theView = CustomView(frame: CGRect(x: 50, y: 100, width: 100, height: 100))
        theView.backgroundColor = .red
        theView.customDelegate = self
        view.addSubview(theView)
        
        let theBlueView = CustomView(frame: CGRect(x: 200, y: 100, width: 100, height: 100))
        theBlueView.backgroundColor = .blue
        theBlueView.customDelegate = self
        view.addSubview(theBlueView)
        
        
    }

    


}

