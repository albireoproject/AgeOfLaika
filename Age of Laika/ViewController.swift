//
//  ViewController.swift
//  Age of Laika
//
//  Created by Hongsun Yoon, M.D. on 11/2/14.
//  Copyright (c) 2014 Hongsun Yoon, M.D. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var humanYearTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(sender: UIButton) {
        let humanYearInt = humanYearTextField.text.toInt()!
        let convertedDogYears = humanYearInt * 7
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(convertedDogYears)"
        humanYearTextField.resignFirstResponder()
    }
    @IBAction func buttonPressedReal(sender: UIButton) {
//        let stringFromTextField = humanYearTextField.text
//        let doubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        
        let doubleFromTextField = Double((humanYearTextField.text as NSString).doubleValue)
        var realDogYears:Double
        
        if doubleFromTextField > 2 {
            realDogYears = (10.5 * 2) + ((doubleFromTextField - 2) * 4)
        }
        else {
            realDogYears = 10.5 * doubleFromTextField
        }
        
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(realDogYears)" + " Real Human Years"
        humanYearTextField.resignFirstResponder()

    }
}