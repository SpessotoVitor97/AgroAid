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
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var aditionalInfoTextField: UITextField!
    
    @IBOutlet weak var nextButton: UIButton!
    
    var userType: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
