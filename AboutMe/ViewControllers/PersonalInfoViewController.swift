//
//  PersonalInfoViewController.swift
//  AboutMe
//
//  Created by Келлер Дмитрий on 04.04.2023.
//

import UIKit

final class PersonalInfoViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var biographyLabel: UILabel!
    
    var photo = [""]
    var biography = ""
    
    private let photoGallery = [
        UIImage(named: "IMG_0218"),
        UIImage(named: "IMG_0219"),
        UIImage(named: "IMG_0220"),
        UIImage(named: "IMG_0221")
    ]
    
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
        photoImageView.layer.cornerRadius = 20
        photoImageView.image = UIImage(named: "IMG_0218")
        biographyLabel.text = biography
        print (biographyLabel.text ?? "[d[d[d")
    }
  
    @IBAction func leafThroughPhotoGallery(_ sender: UIButton) {
        photoImageView.image = photoGallery.randomElement() as? UIImage
        
    }
}
