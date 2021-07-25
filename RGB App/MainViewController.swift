//
//  MainViewController.swift
//  RGB App
//
//  Created by Kovalyov Dmitry on 25.07.2021.
//

import UIKit

class MainViewController: UIViewController {
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.currentColorOfView = view.backgroundColor
    }
}
