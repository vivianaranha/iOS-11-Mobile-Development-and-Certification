//
//  ViewController.swift
//  SegmentsLife
//
//  Created by Vivian Herold Aranha on 3/30/18.
//  Copyright © 2018 Vivian Aranha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var segmentedControl = UISegmentedControl()
    var label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        segmentedControl = UISegmentedControl(items: ["Breakfast", "Lunch", "Dinner"])
        segmentedControl.frame = CGRect(x: 10, y: 100, width: self.view.frame.size.width - 20, height: 40)
        //segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self, action: #selector(segmentChanged), for: .valueChanged)
        view.addSubview(segmentedControl)
        
        label = UILabel(frame: CGRect(x: 10, y: 200, width: self.view.frame.size.width - 20, height: 40))
        label.textAlignment = .center
        label.text = "Select One!!!"
        self.view.addSubview(label)
        
    }
    
    @objc func segmentChanged() {
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            label.text = "Most Important Meal"
        case 1:
            label.text = "Lunch Time Yaay!!!"
        case 2:
            label.text = "Lets Keep it Lite"
        default:
            label.text = "Select One!!!"
        }
        
    }

   


}

