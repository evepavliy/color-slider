//
//  ViewController.swift
//  colorslider
//
//  Created by Ievgeniia Pavliuchyk on 17/10/2018.
//  Copyright © 2018 Ievgeniia Pavliuchyk. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    // Properties
    var redValue: CGFloat = 0.5
    var greenValue: CGFloat = 0.5
    var blueValue: CGFloat = 0.5
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet weak var colorView: UIView!
    
    // Actions
    
    @IBAction func setredlabel(sender: UISlider){
        self.redValueLabel.text = "\(self.redValue)"
    }
    
    @IBAction func setgreenlabel(sender: UISlider){
        self.greenValueLabel.text = "\(self.greenValue)"
    }
    
    @IBAction func setbluelabel(sender: UISlider){
        self.blueValueLabel.text = "\(self.blueValue)"
    }
    
    
    @IBAction func redValueChanged(sender: UISlider) {
        redValue = CGFloat(sender.value)
        displayColors()
    }
    
    
    @IBAction func greenValueChanged(sender: UISlider) {
        greenValue = CGFloat(sender.value)
        displayColors()
    }
    
    @IBAction func blueValueChanged(sender: UISlider) {
        blueValue = CGFloat(sender.value)
        displayColors()
    }
    
    
    func displayColors() {
        colorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initial BG color (viewDidLoad() loads only once when ViewController view loads)
      colorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }
}
