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
    
    var user: User!
    
    var avatar = ""
    var namePerson = ""
    var fullnamePerson = ""
    var dateOfBirthPerson = ""
    var familyStatusPerson = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        namePersonLabel.text = user.person.name
        fullnamePersonLabel.text = user.person.fullname
        dateOfBirthPersonLabel.text = user.person.dateOfBirth
       // familyStatusPersonLabel.text = user.person.familyStatus
        avatarImageView.layer.cornerRadius = 50
        avatarImageView.image = UIImage(named: "IMG_0214")
    }
    
}


