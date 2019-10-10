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

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomBallNumber = Int(arc4random_uniform(5))
        // Do any additional setup after loading the view.
        imageView.image = UIImage(named : ballCollection[randomBallNumber])
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
    }
    
}

