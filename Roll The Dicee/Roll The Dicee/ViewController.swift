//
//  ViewController.swift
//  Roll The Dicee
//
//  Created by Gabriel Martinez on 2017-11-16.
//  Copyright © 2017 Gabriel Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    @IBOutlet weak var rollBtn: UIButton!
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndexOne = 0
    var randomDiceIndexTwo = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        rollBtn.layer.cornerRadius = 10
        rollBtn.layer.borderWidth = 2
        rollBtn.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        diceImageViewOne.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        diceImageViewOne.layer.borderWidth = 2
        diceImageViewTwo.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        diceImageViewTwo.layer.borderWidth = 2
        
         randomNumbers()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func rollTheDiceBtn(_ sender: UIButton) {
        
        randomNumbers()
    }
    
    func randomNumbers(){
        
        randomDiceIndexOne = Int(arc4random_uniform(6))
        randomDiceIndexTwo = Int(arc4random_uniform(6))
        
       
        
        diceImageViewOne.image = UIImage(named: diceArray[randomDiceIndexOne])
        diceImageViewTwo.image = UIImage(named: diceArray[randomDiceIndexTwo])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomNumbers() 
    }
    
}

