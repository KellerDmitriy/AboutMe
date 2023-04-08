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
    
    private var photoIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        biographyLabel.text = user.person.biography
        photoImageView.layer.cornerRadius = 20
        photoImageView.image = UIImage(named: user.person.photogallery[photoIndex])
    }
    
    @IBAction func leafThroughPhotoGallery(_ sender: UIButton){
        photoIndex += 1
        if photoIndex == user.person.photogallery.count {
            photoIndex = 0
            photoImageView.image = UIImage(named: user.person.photogallery[photoIndex])
        } else {
            photoImageView.image = UIImage(named: user.person.photogallery[photoIndex])
        }
    }
}

