//
//  ViewController.swift
//  Age of Laika
//
//  Created by Igor Majer on 6.10.2014..
//  Copyright (c) 2014. Igor Majer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterNumberOfHumanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        titleLabel.textColor = UIColor.blackColor()
        titleLabel.backgroundColor = UIColor.grayColor()
        titleLabel.layer.masksToBounds = true
        titleLabel.layer.cornerRadius = 15
        
        dogYearsLabel.textColor = UIColor.blackColor()
        dogYearsLabel.backgroundColor = UIColor.grayColor()
        dogYearsLabel.layer.masksToBounds = true
        dogYearsLabel.layer.cornerRadius = 4
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
 
        let numberOfDogYears = enterNumberOfHumanYearsTextField.text.toInt()!
        dogYearsLabel.hidden = false
        dogYearsLabel.backgroundColor = UIColor.greenColor()
        dogYearsLabel.text = "\(numberOfDogYears * 7)" + " in human years"
        enterNumberOfHumanYearsTextField.resignFirstResponder()
        
        
    }

    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        
        let numberOfYears = enterNumberOfHumanYearsTextField.text.toInt()!
        var realDogYears:Double
        dogYearsLabel.hidden = false
        dogYearsLabel.backgroundColor = UIColor.redColor()
        if numberOfYears <= 2 {
            realDogYears = Double(numberOfYears) * 10.5

        }
        
        else {
            realDogYears = (Double(numberOfYears) - 2) * 4 + 21
        }
        
        dogYearsLabel.text = "\(realDogYears)" + " in real dog years"
        enterNumberOfHumanYearsTextField.resignFirstResponder()
    }
    

}

