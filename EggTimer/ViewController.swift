//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    
    /*
    let softTime = 5
    let mediumTime = 8
    let hardTime = 12
    */
    /*
    let soft = "Soft"
    let medium = "Medium"
    let hard = "Hard"
    */
    

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        let result = eggTimes[hardness]!
        print(result)
        /*
        if hardness == "Soft" {
            print("Boil \(softTime) min")
        } else if hardness == "Medium" {
            print("Boil \(mediumTime) min")
        } else {
            print("Boil \(hardTime) min")
        }
        */
    }
    
}
