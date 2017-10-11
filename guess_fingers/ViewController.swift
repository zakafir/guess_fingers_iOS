//
//  ViewController.swift
//  guess_fingers
//
//  Created by zakaria afir on 11/10/2017.
//  Copyright © 2017 ZakariaAfir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberField: UITextField!
    
    @IBOutlet weak var numberGuessed: UILabel!
    
    
    @IBAction func guessButton(_ sender: Any) {
        let randomNumber = String(arc4random_uniform(6))
        if numberField.text == randomNumber {
            numberGuessed.text = "You're right!"
        }else{
            numberGuessed.text = "You're wrong! the right number is \(randomNumber)"
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

