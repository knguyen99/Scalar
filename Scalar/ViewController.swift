//
//  ViewController.swift
//  Scalar
//
//  Created by Khoi Nguyen on 8/17/18.
//  Copyright © 2018 Khoi Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            if #available(iOS 9.0, *) {
                if traitCollection.forceTouchCapability == UIForceTouchCapability.available {
                    // 3D Touch capable
                }
                let force = touch.force/touch.maximumPossibleForce
                let forcePercent = (Int)(force*100)
                forceLabel.text = "\(forcePercent)% force"
                let grams = (Int)(force * 385)
                massLabel.text = "\(grams) grams"
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        forceLabel.text = "% force"
        massLabel.text = "0 grams"
    }
}



