//
//  ViewController.swift
//  Dicee
//
//  Created by King on 27/01/2018.
//  Copyright © 2018 King. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceNo1: Int = 0
    var randomDiceNo2: Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        randomDiceNo1 = Int(arc4random_uniform(6))
        randomDiceNo2 = Int(arc4random_uniform(6))
        diceImageView1.image = UIImage(named: diceArray[randomDiceNo1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceNo2])
    }
    
}

