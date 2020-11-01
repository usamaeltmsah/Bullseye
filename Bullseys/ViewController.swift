//
//  ViewController.swift
//  Bullseys
//
//  Created by Usama Eltmsah on 11/1/20.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    var randNum = 0
    @IBOutlet weak var numLabel: UILabel!
    
    @IBOutlet weak var numSlider: UISlider!
    
    @IBOutlet weak var exactSwitch: UISwitch!
    @IBOutlet weak var resultValue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        randNum = Int(arc4random_uniform(101))
        numLabel.text = "Move slider to \(randNum)"
    }

    
    @IBAction func checkValue(_ sender: Any) {
        
        if exactSwitch.isOn == false {
            if Int(numSlider.value) >= randNum-3 && Int(numSlider.value) <= randNum+3 {
                resultValue.text = "That's right!"
            }
            else{
                resultValue.text = "Sorry you missed it :("
            }
        }
        else
        {
            if randNum == Int(numSlider.value){
                resultValue.text = "That's right!"
            }
            else{
                resultValue.text = "Sorry you missed it :("
            }

        }
    }
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        
    }
}

