//
//  DetailViewController.swift
//  Swift100Project1
//
//  Created by Jay A. on 3/30/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    var selectedPictureNumber = 1
    var totalPictures = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Adding title to Nav bar
        title = "Image \(selectedPictureNumber) of \(totalPictures)"
        
        // Adding an item to the Nav bar item
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTouched))
        
        // Making sure its not a big title
        navigationItem.largeTitleDisplayMode = .never

        if let imageToLoad = selectedImage {
            
            imageView.image = UIImage(named: imageToLoad)
            
        }
    }
    
    // Hiding & showing navigation bar while viewing picture
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    @objc func shareTouched() {
        
        guard let image = imageView.image?.jpegData(compressionQuality: 0.8) else {
            
            print("No image found")
            return
            
        }
        
        let vc = UIActivityViewController(activityItems: [image], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
        
    }
    
}
