//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //basically best spot for variables that change throughout the application.
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    //    var leftDiceNumber = 0
    //    var rightDiceNumber = 5
    let diceArray = [ #imageLiteral(resourceName: "DiceOne" ) , #imageLiteral(resourceName: "DiceTwo") , #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
    
    //    override func viewDidLoad() {
    //        super.viewDidLoad()
    //        //  [using image literal]
    //        //  diceImageView1.image = #imageLiteral(resourceName: "DiceTwo")
    //        //  [using UIImage]
    //        //  diceImageView2.image = UIImage(named: "DiceFour")
    //    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        //images below are  #imageLiteral(resourceName: "DiceOne" )
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        
        // better and fast way of using random: name.randomElement() <<easier.
        // old way of using random : Int.random(in: 0...5) <<more control and can see limits
        //leftDiceNumber += 1
        //rightDiceNumber -= 1
        //leftDiceNumber = leftDiceNumber + 1
        //rightDiceNumber = rightDiceNumber - 1
        
        
        
        //print("left dice number at END is: \(leftDiceNumber)")
        //print("right dice number at END is: \(rightDiceNumber)")
        print(Int.random(in: 1...10))
        
        
        /* <= IF THIS COMMENT IS REMOVED THE CODE WILL REVERT AND SHOW HOW THE ACTUAL CODE LOOKS LIKE FOR THE IMAGES
         
         diceImageView1.image = #imageLiteral(resourceName: "DiceFive") //used #imageLiteral( here and it will show that icon
         
         diceImageView2.image = UIImage(named: "DiceThree")
         //the manual way fo doing it since after iOS 13 there seems to be an issue with imageliteral
         */
    }
    
}

