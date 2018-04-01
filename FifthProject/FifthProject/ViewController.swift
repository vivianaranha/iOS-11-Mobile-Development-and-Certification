//
//  ViewController.swift
//  FifthProject
//
//  Created by Vivian Herold Aranha on 3/19/18.
//  Copyright © 2018 Vivian Aranha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var foodImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pastaClicked(_ sender: Any) {
        foodImage.image = UIImage(named: "pasta")
    }
    
    
    @IBAction func saladClicked(_ sender: Any) {
        foodImage.image = UIImage(named: "salad")
    }
    
}

