//
//  PersonalDataViewController.swift
//  AgroAid
//
//  Created by Vitor Spessoto on 23/08/21.
//

import UIKit

class PersonalDataViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var streetTypeTextField: UITextField!
    
    @IBOutlet weak var creaNumberLabel: UILabel!
    @IBOutlet weak var creaNumberTexField: UITextField!
    
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var aditionalInfoTextField: UITextField!
    
    @IBOutlet weak var nextButton: DSButton!
    
    @IBOutlet weak var personalDataView: UIView!
    @IBOutlet weak var addressView: UIView!
    
    var userType: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personalDataView.layer.cornerRadius = personalDataView.frame.size.height / 10
        addressView.layer.cornerRadius = addressView.frame.size.height / 10
        
        if userType == "Produtor" {
            creaNumberLabel.isHidden = true
            creaNumberTexField.isHidden = true
        }
        
        nextButton.configure(with: .primaryDefault)
        nextButton.isEnabled = true
    }
    
    func shouldEnableNextButton() {
        var shouldEnable: Bool {
            guard !nameTextField.hasText || !surnameTextField.hasText || !streetTypeTextField.hasText || !addressTextField.hasText || !numberTextField.hasText else {
                return false
            }
            return true
        }
        nextButton.isEnabled = shouldEnable
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        print("going to RegisterViewController...")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
