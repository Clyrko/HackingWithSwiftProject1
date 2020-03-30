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
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
    
}
