//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Maxim Makarov on 24.11.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var logInButton: UIButton!
    
    // MARK: Private Properties
    private let username = "1"
    private let password = "1"
    
    // MARK: View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 10
    }
    
    // MARK: Work with keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: Work with segues
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard userNameTF.text == username, passwordTF.text == password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeLabelValue = username
    }
    
    // MARK: IB Actions
    @IBAction func remindUserNameButtonTapped(_ sender: UIButton) {
        showAlert(withTitle: "Oops!", andMessage: "Your name is \(username) 😉")
    }
    
    @IBAction func remindPasswordButtonTapped(_ sender: UIButton) {
        showAlert(withTitle: "Oops!", andMessage: "Your password is \(password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    // MARK: Private Methods
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(
            title: "OK",
            style: .default
        ) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

