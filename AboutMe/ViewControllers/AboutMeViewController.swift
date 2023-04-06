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
        guard let tabBarController = segue.destination as?
                UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        viewControllers.forEach { viewController in
            if let wellcomeVC = viewController as? WellcomeViewController {
                wellcomeVC.user = user
                
            } else if let navigationVC = viewController as?
                        UINavigationController {
                guard let userVC = navigationVC.topViewController as?
                        UserViewController else { return }
                userVC.user = user
           
                guard let personVC = navigationVC.topViewController as? PhotoGalleryViewController else {return }
                personVC.user = user
                
                guard let personInfoVC = navigationVC.topViewController as? BiographyPersonViewController else { return }
                
                personInfoVC.user = user
                
            }
        }
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

