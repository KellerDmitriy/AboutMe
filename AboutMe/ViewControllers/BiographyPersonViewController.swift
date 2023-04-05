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
    
    var education = ""
    var dateEducation = ""
    var speciality = ""
    var placeOfJob = ""
    var jobTitle = ""
    var biography = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
   
        educationLabel.text = education
        dateEducationLabel.text = dateEducation
        specialityLabel.text = speciality
        placeOfJobLabel.text = placeOfJob
        jobTitleLabel.text = jobTitle
        
        biographyLebel.text = biography
    }
    

}
