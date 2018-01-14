//
//  ViewController.swift
//  Magic Ball
//
//  Created by Boying Li on 1/13/18.
//  Copyright © 2018 Boying Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomInt : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        imageUpdate()
    }
    func imageUpdate(){
        randomInt = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[randomInt])

    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        imageUpdate()
        
    }

}

