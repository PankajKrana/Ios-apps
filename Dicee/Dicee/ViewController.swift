//
//  ViewController.swift
//  Dicee
//
//  Created by Pankaj Kumar Rana on 19/04/24.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
        
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDiceImage()
    }

    @IBAction func rollButtonInside(_ sender: Any) {
        updateDiceImage()

    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
    
    func updateDiceImage(){
        randomDiceIndex1 = Int.random(in: 1 ... 6) // Adjusted to 1 ... 6 for dice faces
        randomDiceIndex2 = Int.random(in: 1 ... 6) // Adjusted to 1 ... 6 for dice faces
        
        print(randomDiceIndex1)
        print(randomDiceIndex2)
        // Update dice images
        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2)")
        
    }
}

