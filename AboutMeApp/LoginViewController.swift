//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Maxim Makarov on 24.11.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    private let username = "1"
    private let password = "1"

    
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
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == username, passwordTF.text == password else {
            // Введенное имя не валидно, отменяем переход и показываем алерт контроллер
            showAlert(withTitle: "Invalid login or password", andMessage: "Please, enter correct login and password")
            return false
        }
        
        // Введенное имя валидно, разрешаем переход
        return true
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

