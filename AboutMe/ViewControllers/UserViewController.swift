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
    @IBOutlet weak var surnamePersonLabel: UILabel!
    @IBOutlet weak var dateOfBirthPersonLabel: UILabel!
    @IBOutlet weak var familyStatusPersonLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        namePersonLabel.text = user.person.name
        surnamePersonLabel.text = user.person.surname
        dateOfBirthPersonLabel.text = user.person.dateOfBirth
        familyStatusPersonLabel.text = user?.person.familyStatus.rawValue
        avatarImageView.layer.cornerRadius = 50
        avatarImageView.image = UIImage(named: user.person.avatar)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let biographiVC = segue.destination as? BiographyPersonViewController {
            biographiVC.user = user
        } else if let photoGalleryVC = segue.destination as? PhotoGalleryViewController {
            photoGalleryVC.user = user
            
        }
        
    }
}



