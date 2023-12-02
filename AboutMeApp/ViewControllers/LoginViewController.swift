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
    private let user = User.getUserData()
    
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
        guard userNameTF.text == user.user, passwordTF.text == user.password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password") {
                    self.passwordTF.text = ""
                }
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? UITabBarController
        let navigationVC = tabBarVC?.viewControllers?.last as? UINavigationController
        
        tabBarVC?.viewControllers?.forEach{ viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let aboutMeVC = navigationVC?.topViewController as? AboutMeViewController {
                aboutMeVC.user = user
            }
        }
    }
    
    // MARK: IB Actions
    @IBAction func remindUserNameButtonTapped(_ sender: UIButton) {
        showAlert(withTitle: "Oops!", andMessage: "Your name is \(user.user) 😉")
    }
    
    @IBAction func remindPasswordButtonTapped(_ sender: UIButton) {
        showAlert(withTitle: "Oops!", andMessage: "Your password is \(user.password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    // MARK: Private Methods
    private func showAlert(
        withTitle title: String,
        andMessage message: String,
        completion: (() -> Void)? = nil
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(
            title: "OK",
            style: .default
        ) { _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

