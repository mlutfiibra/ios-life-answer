//
//  ViewController.swift
//  life answer
//
//  Created by lutfi on 10/10/19.
//  Copyright © 2019 mlutfiibra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballCollection = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber : Int = 0
    
    func updateBallImage() {
        randomBallNumber = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named : ballCollection[randomBallNumber])
    }

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBallImage()
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
}

