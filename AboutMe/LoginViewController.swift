//
//  ViewController.swift
//  AboutMe
//
//  Created by Келлер Дмитрий on 31.03.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let userName = "Debash"
    private let password = "1"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? WelcomeViewController else { return }
        settingsVC.wellcomeUName = sender as? String ?? ""
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = userName
        passwordTF.text = password
    }
    
    @IBAction func logInButtonTapped() {
        if usernameTF.text == userName && passwordTF.text == password {
            performSegue(withIdentifier: "showWelcomeVC", sender: "Alexey ")
        } else {
            showAlert(
                withTitle: "Invalid login or password!",
                addMessage: "Please, enter correct login and password 🥸 ",
                textfield: passwordTF
            )
        }
    }
    
   
    @IBAction func forgotButtonsTapped(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Hallo!", addMessage: "Your name is \(userName) 👀")
        : showAlert(withTitle: "Hallo!", addMessage: "Your password is \(password) 😉")
    }
    
    
    private func showAlert(withTitle title: String, addMessage message: String, textfield: UITextField? = nil) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let OkAction = UIAlertAction(title: "OK", style: .default) { _ in
            textfield?.text = ""
        }
        alert.addAction(OkAction)
        present(alert, animated: true)
    }
    
}

