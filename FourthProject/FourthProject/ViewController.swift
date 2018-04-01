//
//  ViewController.swift
//  FourthProject
//
//  Created by Vivian Herold Aranha on 3/8/18.
//  Copyright © 2018 Vivian Aranha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentsOfLife: UISegmentedControl!
    
    @IBOutlet weak var displaySelectionLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func segmentsOfLifeChanges(_ sender: Any) {
    
        switch segmentsOfLife.selectedSegmentIndex {
        case 0:
            displaySelectionLbl.text = "You are still a Kid"
        case 1:
            displaySelectionLbl.text = "Time to Grow Up"
        case 2:
            displaySelectionLbl.text = "Retirement Time"

        default:
            displaySelectionLbl.text = "Not Sure what happened"
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

