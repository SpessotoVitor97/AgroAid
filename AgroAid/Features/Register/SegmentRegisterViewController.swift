//
//  SegmentRegisterViewController.swift
//  AgroAid
//
//  Created by Vitor Spessoto on 23/08/21.
//

import UIKit

class SegmentRegisterViewController: UIViewController {

    @IBOutlet weak var employeeButton: UIButton!
    @IBOutlet weak var productorButton: UIButton!
    @IBOutlet weak var nextButton: DSButton!
    
    var userType: String = "Undefined"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
        nextButton.configure(with: .primaryDefault)
        nextButton.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nextButton.isEnabled = false
    }
    
    func shouldEnableNextButton() {
        var shouldEnable: Bool {
            guard !employeeButton.isSelected || !productorButton.isSelected else {
                return false
            }
            return true
        }
        nextButton.isEnabled = shouldEnable
    }

    @IBAction func employeeButonPressed(_ sender: UIButton) {
        userType = "Profissional"
        shouldEnableNextButton()
    }
    
    @IBAction func productorButtonPressed(_ sender: UIButton) {
        userType = "Produtor"
        shouldEnableNextButton()
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        print("going to PersonalDataViewController...")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let personalDataVC = segue.destination as? PersonalDataViewController {
            personalDataVC.userType = self.userType
        }
    }

}
