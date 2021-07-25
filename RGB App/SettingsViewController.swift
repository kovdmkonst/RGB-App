//
//  ViewController.swift
//  RGB App
//
//  Created by Kovalyov Dmitry on 09.07.2021.
//

import UIKit

class SettingsViewController: UIViewController {
        
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redColorField: UITextField!
    @IBOutlet var greenColorField: UITextField!
    @IBOutlet var blueColorField: UITextField!
    
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!

    var currentColorOfView: UIColor!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.setValue(0, animated: false)
        greenSlider.setValue(0.25, animated: false)
        blueSlider.setValue(0.5, animated: false)
        
        redColorField.text = "\(redSlider.value)"
        greenColorField.text = "\(greenSlider.value)"
        blueColorField.text = "\(blueSlider.value)"
        
       
//        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        colorView.layer.cornerRadius = 15
        

    }
    
    
    @IBAction func showRedInfo() {
        let redValue = redSlider.value
        redColorField.text = "\(round(100 * redValue) / 100)"
    }
    
    @IBAction func showGreenInfo() {
        let greenValue = greenSlider.value
        greenColorField.text = "\(round(100 * greenValue) / 100)"
    }
    
    @IBAction func showBlueInfo() {
        let blueValue = blueSlider.value
        blueColorField.text = "\(round(100 * blueValue) / 100)"
    }
   
    @IBAction func changeColor() {
    colorView.backgroundColor = UIColor(
        red: CGFloat(redSlider.value),
        green: CGFloat(greenSlider.value),
        blue: CGFloat(blueSlider.value),
        alpha: 1
    )
    }
}


