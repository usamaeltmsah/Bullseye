//
//  ViewController.swift
//  Bullseys
//
//  Created by Usama Eltmsah on 11/1/20.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    var counter = 0
    var randNum = 0
    @IBOutlet weak var numLabel: UILabel!
    
    @IBOutlet weak var numSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randNum = Int(arc4random_uniform(101))
        numLabel.text = "Move slider to \(randNum)"
    }

    @IBAction func increase(_ sender: Any) {
        counter += 1
        numLabel.text = "\(counter)"
    }
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        numLabel.text = "\(round(numSlider.value))"
    }
}

