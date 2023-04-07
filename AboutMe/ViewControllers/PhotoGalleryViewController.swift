//
//  PersonalInfoViewController.swift
//  AboutMe
//
//  Created by Келлер Дмитрий on 04.04.2023.
//

import UIKit

final class PhotoGalleryViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!

    @IBOutlet weak var biographyLabel: UILabel!
    
    var user: User!
    
    private var photoCount = 0
    
    private let photoGallery = [
        UIImage(named: "IMG_0218"),
        UIImage(named: "IMG_0219"),
        UIImage(named: "IMG_0220"),
        UIImage(named: "IMG_0221")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        biographyLabel.text = user.person.biography
        photoImageView.layer.cornerRadius = 20
        photoImageView.image = UIImage(named: "IMG_0220")
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
