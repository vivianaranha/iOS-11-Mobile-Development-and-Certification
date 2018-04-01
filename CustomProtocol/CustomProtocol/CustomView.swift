//
//  CustomView.swift
//  CustomProtocol
//
//  Created by Vivian Herold Aranha on 3/31/18.
//  Copyright © 2018 Vivian Aranha. All rights reserved.
//

import UIKit

protocol CustomViewDelegate {
    func sendMeColor(color:UIColor)
    func tapOccured()
}

class CustomView: UIView {
    
    var customDelegate:CustomViewDelegate?

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let touchGesture = UITapGestureRecognizer(target: self, action: #selector(printThis))
        touchGesture.numberOfTapsRequired = 1
        self.isUserInteractionEnabled = true
        self.addGestureRecognizer(touchGesture)
    }
    
    @objc func printThis(){
        print("I was Tapped")
        customDelegate?.sendMeColor(color: self.backgroundColor!)
        customDelegate?.tapOccured()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
