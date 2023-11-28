//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Maxim Makarov on 24.11.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    private let controlUserName = "1"
    private let controlPassword = "1"

    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 10
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
    @IBAction func logInButtonTapped() {

    }
    
    @IBAction func remindUserNameButtonTapped(_ sender: UIButton) {
        showAlert(withTitle: "Oops!", andMessage: "Your name is 1 😉")
    }
    
    @IBAction func remindPasswordButtonTapped(_ sender: UIButton) {
        showAlert(withTitle: "Oops!", andMessage: "Your password is 1 😉")
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

