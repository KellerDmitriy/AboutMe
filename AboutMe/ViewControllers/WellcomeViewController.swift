//
//  WelcomeViewController.swift
//  AboutMe
//
//  Created by Келлер Дмитрий on 31.03.2023.
//

import UIKit

final class WellcomeViewController: UIViewController {

    @IBOutlet weak var wellcomeLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var wellcomeUName = ""
    var userName = ""
    
    private let primaryColor = UIColor(
        red: 110/255,
        green: 209/255,
        blue: 88/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        wellcomeLabel.text = "Wellcome, \(wellcomeUName)!"
        nameLabel.text = "My name is \(userName)."
    }    
}

// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
