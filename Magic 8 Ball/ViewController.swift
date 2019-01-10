//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by sumit yadav on 10/01/19.
//  Copyright © 2019 sumit yadav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var ballArray = [ "ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber : Int = 0
    
   
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    
    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    func newBallImage(){
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}

