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
    var delegate: SettingsViewControllerDelegate?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 15
        
        colorView.backgroundColor = currentColorOfView
        
        fixSliderValue()
        showRedInfo()
        showGreenInfo()
        showBlueInfo()
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
     let choosenColor = UIColor(
        red: CGFloat(redSlider.value),
        green: CGFloat(greenSlider.value),
        blue: CGFloat(blueSlider.value),
        alpha: 1)
        colorView.backgroundColor = choosenColor
        delegate?.setNewBackgroundColor(colorView: choosenColor)
    }
    
    @IBAction func doneButtonPressed() {
        view.endEditing(true)
        dismiss(animated: true)
    }

    private func fixSliderValue() {
        let color = CIColor(color: currentColorOfView)
        redSlider.value = Float(color.red)
        greenSlider.value = Float(color.green)
        blueSlider.value = Float(color.blue)
    }
}


