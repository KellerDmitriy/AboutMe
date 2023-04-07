//
//  ViewController.swift
//  AboutMe
//
//  Created by Келлер Дмитрий on 31.03.2023.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        usernameTF.text = user.login
        passwordTF.text = user.password
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? TabBarController else {
            return
        }
        tabBarController.user = user
            }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = user.login
        passwordTF.text = user.password
    }
    
    @IBAction func logInButtonTapped() {
        if usernameTF.text == user.login, passwordTF.text == user.password {
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
            
        } else {
            showAlert(
                withTitle: "Invalid login or password!",
                addMessage: "Please, enter correct login and password 🥸 ",
                textfield: passwordTF
            )
            return
        }
    }
    
    @IBAction func forgotButtonsTapped(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Hallo!", addMessage: "Your name is \(user.login) 👀")
        : showAlert(withTitle: "Hallo!", addMessage: "Your password is \(user.password) 😉")
    }
    
    private func showAlert(
        withTitle title: String,
        addMessage message: String,
        textfield: UITextField? = nil
    ) {
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

