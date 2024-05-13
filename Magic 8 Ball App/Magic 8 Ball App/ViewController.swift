//
//  ViewController.swift
//  Magic 8 Ball App
//
//  Created by Pankaj Kumar Rana on 21/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    let randomBallArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var rollBall : Int = 1

    @IBOutlet weak var rollTheImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBallImage()
        // Do any additional setup after loading the view.
    }

    @IBAction func rpressTheButton(_ sender: UIButton) {
        updateBallImage()
        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
    
    func updateBallImage(){
        rollBall = Int.random(in: 0 ... 4)
        
        print(rollBall)
        
        rollTheImage.image = UIImage(named: randomBallArray[rollBall])
    
    }
    
}

