//
//  ViewController.swift
//  how-many-fingers
//
//  Created by BEATRIZ MACEDO on 9/27/15.
//  Copyright © 2015 Beatriz Macedo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userGuessTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func guess() {
        
        let diceRoll = Int(arc4random_uniform(5) + 1)
        if userGuessTextField.text! != "" && diceRoll == Int(userGuessTextField.text!) {
            resultLabel.text = "You're Right!"
        } else {
            resultLabel.text = "Wrong! It was a \(diceRoll)"
        }
        
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

