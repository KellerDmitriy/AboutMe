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
    
    @IBOutlet weak var biographyLebel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        educationLabel.text = user.person.biography.education
        dateEducationLabel.text = user.person.biography.dateEducation
        specialityLabel.text = user.person.biography.speciality
        placeOfJobLabel.text = user.person.biography.placeOfJob
        jobTitleLabel.text = user.person.biography.jobTitle

        biographyLebel.text = user.person.biography.personal
    }
    

}
