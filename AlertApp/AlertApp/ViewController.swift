//
//  ViewController.swift
//  AlertApp
//
//  Created by Vivian Herold Aranha on 3/20/18.
//  Copyright © 2018 Vivian Aranha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func alertInput(_ sender: Any) {
        let alert = UIAlertController(title: "Whats your Name??", message: nil, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler:nil))

        alert.addTextField(configurationHandler: { textfield in
            textfield.placeholder = "Enter your name"
        })
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in
            if let name = alert.textFields?.first?.text {
                print("Welcome \(name)")
            }
        }))
        
        self.present(alert, animated: true)

    }
    
    @IBAction func showAction(_ sender: Any) {
        let alert = UIAlertController(title: "Breakfast", message: "Have your Breakfast", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { action in
            print("Good Job")
        }))

        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler:nil))
        
        alert.addAction(UIAlertAction(title: "Maybe", style: .destructive, handler:nil))
        
        self.present(alert, animated: true)
    }
    
    @IBAction func showAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Breakfast", message: "Have your Breakfast", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { action in
            print("Good Job")
        }))
        
        alert.addAction(UIAlertAction(title: "No", style: .destructive, handler:nil))
        
        self.present(alert, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

