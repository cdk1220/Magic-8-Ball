//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Don Chalanga Kuruppu on 8/11/17.
//  Copyright © 2017 Don Chalanga Kuruppu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var onlyImage: UIImageView!
    
    var randomNumber: Int = 0
    let ballStates = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomStateFortheBall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onlyButton(_ sender: Any) {
        randomStateFortheBall()
    }
    
    func randomStateFortheBall(){
        randomNumber = Int(arc4random_uniform(5))
        onlyImage.image = UIImage(named: ballStates[randomNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?){
        randomStateFortheBall()
    }
}

