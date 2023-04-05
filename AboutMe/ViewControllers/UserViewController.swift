//
//  UserViewController.swift
//  AboutMe
//
//  Created by Келлер Дмитрий on 04.04.2023.
//

import UIKit

final class UserViewController: UIViewController {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var namePersonLabel: UILabel!
    @IBOutlet weak var fullnamePersonLabel: UILabel!
    @IBOutlet weak var dateOfBirthPersonLabel: UILabel!
    @IBOutlet weak var familyStatusPersonLabel: UILabel!
    
    var avatar = ""
    var namePerson = ""
    var fullnamePerson = ""
    var dateOfBirthPerson = ""
    var familyStatusPerson = ""
    
    private let primaryColor = UIColor(
        red: 110/255,
        green: 209/255,
        blue: 88/255,
        alpha: 0.3
    )
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 0.5
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        namePersonLabel.text = namePerson
        fullnamePersonLabel.text = fullnamePerson
        dateOfBirthPersonLabel.text = dateOfBirthPerson
        familyStatusPersonLabel.text = familyStatusPerson
        avatarImageView.layer.cornerRadius = 50
        avatarImageView.image = UIImage(named: "IMG_0214")
    }
    
}


