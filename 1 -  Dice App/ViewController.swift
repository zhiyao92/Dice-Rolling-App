//
//  ViewController.swift
//  1 -  Dice App
//
//  Created by Kelvin Tan on 3/19/18.
//  Copyright © 2018 Kelvin Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var index1: Int = 0
    var index2: Int = 0
    
    let diceImages = ["dice1", "dice2","dice3","dice4","dice5","dice6"]
    
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        randomizer()
    }
    
    func randomizer(){
        //The function arc4random_uniform(_:) takes one parameter, the upper bound. It’ll return a random number between 0 and this upper bound, minus 1. Returning number between 0 - 5
        index1 = Int(arc4random_uniform(6))
        index2 = Int(arc4random_uniform(6))
        
        dice1.image = UIImage(named: diceImages[index1])
        dice2.image = UIImage(named: diceImages[index2])
    }
    // shake gesture
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomizer()
    }
}

