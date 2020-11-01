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
    @IBOutlet weak var playAgainButton: UIButton!
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
                resultValue.backgroundColor = UIColor.green
            }
            else{
                resultValue.text = "Sorry you missed it :("
                resultValue.backgroundColor = UIColor.red
            }
        }
        else
        {
            if randNum == Int(numSlider.value){
                resultValue.text = "That's right!"
                resultValue.backgroundColor = UIColor.green
            }
            else{
                resultValue.backgroundColor = UIColor.red
                resultValue.text = "Sorry you missed it :("
            }

        }
        resultValue.isHidden = false
        playAgainButton.isHidden = false
    }
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        
    }
    @IBAction func playAgain(_ sender: Any) {
        numSlider.setValue(50.0, animated: false)
        randNum = Int(arc4random_uniform(101))
        numLabel.text = "Move slider to \(randNum)"
        resultValue.isHidden = true
        playAgainButton.isHidden = true
    }
}

