//
//  SettingsViewController.swift
//  Lesson 2.6 WorkBook
//
//  Created by user246073 on 9/6/24.
//

import UIKit

final class SettingsViewController: UIViewController {
    
    @IBOutlet var minValueTF: UITextField!
    @IBOutlet var maxValueTF: UITextField!
    
    var minimumValue: String?
    var maximumValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func cancelButtonAction() {
        dismiss(animated: true)
        minValueTF.text = minimumValue
        maxValueTF.text = maximumValue
    }
    
}
