//
//  ViewController.swift
//  DialExperiment
//
//  Created by Anthony Hanson on 12/5/19.
//  Copyright © 2019 Anthony Hanson. All rights reserved.
//

import UIKit
import LiveKnob

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var dial: LiveKnob!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        valueLabel.text = "\(dial.value)"
        slider.value = dial.value
    }
    
    @IBAction func dialChanged(_ sender: Any) {
        slider.value = dial.value
        valueLabel.text = "\(dial.value)"
    }
    @IBAction func sliderChanged(_ sender: Any) {
        dial.value = slider.value
        valueLabel.text = "\(dial.value)"
    }
}

