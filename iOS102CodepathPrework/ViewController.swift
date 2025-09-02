//
//  ViewController.swift
//  iOS102CodepathPrework
//
//  Created by Citlali Hernandez on 9/1/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
   
    
    @IBOutlet weak var petNumberLabel: UILabel!
    @IBOutlet weak var petNumberStepper: UIStepper!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        petNumberLabel.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func introduceDidTap(_ sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(petNumberLabel.text!) pets. It is \(morePetsSwitch.isOn) that I want more pets."
        
        print(introduction)
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }


}

