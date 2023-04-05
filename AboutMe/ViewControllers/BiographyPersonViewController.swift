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
    
    private let primaryColor = UIColor(
        red: 110/255,
        green: 209/255,
        blue: 88/255,
        alpha: 0.3
    )
    private let secondaryColor = UIColor(
        red: 157/255,
        green: 148/255,
        blue: 250/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
   
        educationLabel.text = education
        dateEducationLabel.text = dateEducation
        specialityLabel.text = speciality
        placeOfJobLabel.text = placeOfJob
        jobTitleLabel.text = jobTitle
        
        biographyLebel.text = biography
    }
    

 

}
