//
//  MainViewController.swift
//  RGB App
//
//  Created by Kovalyov Dmitry on 25.07.2021.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewBackgroundColor(colorView: UIColor)
}

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemIndigo
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.currentColorOfView = view.backgroundColor
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        let settingVC = segue.source as! SettingsViewController
        settingVC.delegate = self
        settingVC.changeColor()
    }
}

extension MainViewController: SettingsViewControllerDelegate {
    func setNewBackgroundColor(colorView: UIColor) {
        view.backgroundColor = colorView
        }
}
