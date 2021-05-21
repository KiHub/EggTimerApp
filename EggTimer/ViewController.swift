//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 30, "Medium": 42, "Hard": 72]
    
    var secondsRemaining = 60
    
    var timer = Timer()
        
    
    @IBOutlet weak var titleLabel: UILabel!
    
    

    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
        secondsRemaining = eggTimes[hardness]!
     
        
       timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
       }



       @objc func updateTimer() {
           //example functionality
           if secondsRemaining > 0 {
               print("\(secondsRemaining) seconds to the end")
               secondsRemaining -= 1
           } else {
            timer.invalidate()
            titleLabel.text = "Done"
           }
        
   
    }
    


    
}
