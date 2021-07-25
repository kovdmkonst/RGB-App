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
        setItemButton()
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
    
    private func setItemButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: .checkmark, style: .done, target: self, action: nil)

    }
}

extension MainViewController: SettingsViewControllerDelegate {
    func setNewBackgroundColor(colorView: UIColor) {
        view.backgroundColor = colorView
        }
}
