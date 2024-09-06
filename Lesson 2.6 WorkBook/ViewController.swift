//
//  ViewController.swift
//  Lesson 2.6 WorkBook
//
//  Created by user246073 on 9/6/24.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var minValueLabel: UILabel!
    @IBOutlet var maxValueLabel: UILabel!
    @IBOutlet var randomValueLabel: UILabel!
    @IBOutlet var getRandomValueButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getRandomValueButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingVC = segue.destination as? SettingsViewController
        settingVC?.minimumValue = minValueLabel.text
        settingVC?.maximumValue = maxValueLabel.text
    }

    func getRandomValueButtonAction() {
        let minValue = Int(minValueLabel.text ?? "") ?? 0
        let maxValue = Int(maxValueLabel.text ?? "") ?? 100
        
        randomValueLabel.text = Int.random(in: minValue...maxValue).formatted()

    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        let settingsVC = segue.source as? SettingsViewController
        minValueLabel.text = settingsVC?.minValueTF.text
        maxValueLabel.text = settingsVC?.maxValueTF.text

    }
}

