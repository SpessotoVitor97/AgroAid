//
//  LoginViewController.swift
//  AgroAid
//
//  Created by Vitor Spessoto on 23/08/21.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loadingView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.isSecureTextEntry = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        loadingView.stopAnimating()
        loadingView.isHidden = true
        loginButton.isEnabled = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        loadingView.stopAnimating()
        loadingView.isHidden = true
        loginButton.isEnabled = true
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        loadingView.isHidden = false
        loadingView.startAnimating()
        loginButton.isEnabled = false
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    self.loadingView.stopAnimating()
                    self.loadingView.isHidden = true
                    self.loginButton.isEnabled = true
                    print(e)
                } else {
                    self.loadingView.stopAnimating()
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
        }

    }

}
