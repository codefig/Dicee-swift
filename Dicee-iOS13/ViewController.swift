//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageviewTwo: UIImageView!
    @IBOutlet weak var diceImageViewOne: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageViewOne.image = UIImage(imageLiteralResourceName: "DiceSix")
        diceImageviewTwo.image = UIImage(imageLiteralResourceName: "DiceSix")
        diceImageViewOne.alpha = 0.5
        // Do any additional setup after loading the view.
    }


    @IBAction func rollButton(_ sender: UIButton) {
       
        
        let imageArray : [String] = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"];
        let randomOne = Int.random(in: 0...5);
        let randomTwo = Int.random(in: 0...5);
        diceImageViewOne.image = UIImage(imageLiteralResourceName: imageArray[randomOne])
        diceImageviewTwo.image = UIImage(imageLiteralResourceName: imageArray[randomTwo])
        
    }
}

