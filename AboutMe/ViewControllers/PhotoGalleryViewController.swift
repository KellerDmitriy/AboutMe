//
//  PersonalInfoViewController.swift
//  AboutMe
//
//  Created by Келлер Дмитрий on 04.04.2023.
//

import UIKit

final class PhotoGalleryViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
  
    
    var photo = [""]
    var biography = ""
    
    private var photoCount = 0
    
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
        red: 157/255,
        green: 148/255,
        blue: 250/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        photoImageView.layer.cornerRadius = 20
        photoImageView.image = UIImage(named: "IMG_0218")
    }
  
    @IBAction func leafThroughPhotoGallery(_ sender: UIButton) {
        if photoCount < photoGallery.count {
            photoImageView.image = photoGallery[photoCount]
            photoCount += 1
        } else {
            photoCount = 0
        }
    }
}
