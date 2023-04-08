//
//  ProInformationsViewController.swift
//  AboutMe
//
//  Created by Келлер Дмитрий on 04.04.2023.
//

import UIKit

final class BiographyPersonViewController: UIViewController {

    @IBOutlet weak var educationLabel: UILabel!
    @IBOutlet weak var dateEducationLabel: UILabel!
    @IBOutlet weak var specialityLabel: UILabel!
    @IBOutlet weak var placeOfJobLabel: UILabel!
    @IBOutlet weak var jobTitleLabel: UILabel!
    
    @IBOutlet weak var contactsLebel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        educationLabel.text = user.person.professionalInfo.education
        dateEducationLabel.text = user.person.professionalInfo.dateEducation
        specialityLabel.text = user.person.professionalInfo.speciality
        placeOfJobLabel.text = user.person.professionalInfo.placeOfJob
        jobTitleLabel.text = user.person.professionalInfo.jobTitle

        contactsLebel.text = user.person.professionalInfo.contacts
    }
}
