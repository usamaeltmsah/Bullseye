//
//  ViewController.swift
//  Bullseys
//
//  Created by Usama Eltmsah on 11/1/20.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0
    @IBOutlet weak var numLabel: UILabel!
    
    @IBOutlet weak var numSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func increase(_ sender: Any) {
        counter += 1
        numLabel.text = "\(counter)"
    }
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        print(numSlider.value)
    }
}

