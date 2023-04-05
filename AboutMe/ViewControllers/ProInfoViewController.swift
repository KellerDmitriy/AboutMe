//
//  ProInformationsViewController.swift
//  AboutMe
//
//  Created by Келлер Дмитрий on 04.04.2023.
//

import UIKit

final class ProInfoViewController: UIViewController {

    @IBOutlet weak var educationLabel: UILabel!
    @IBOutlet weak var dateEducationLabel: UILabel!
    @IBOutlet weak var specialityLabel: UILabel!
    @IBOutlet weak var placeOfJobLabel: UILabel!
    @IBOutlet weak var jobTitleLabel: UILabel!
    
    var education = ""
    var dateEducation = ""
    var speciality = ""
    var placeOfJob = ""
    var jobTitle = ""
    
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
   
        educationLabel.text = education
        dateEducationLabel.text = dateEducation
        specialityLabel.text = speciality
        placeOfJobLabel.text = placeOfJob
        jobTitleLabel.text = jobTitle
    }
    

 

}
