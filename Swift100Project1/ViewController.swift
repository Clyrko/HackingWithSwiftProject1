//
//  ViewController.swift
//  Swift100Project1
//
//  Created by Jay A. on 3/30/20.
//  Copyright © 2020 Jay A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            
            if item.hasPrefix("nssl") {
                
                pictures.append(item)
            }            
        }
        
        print(pictures)
        
    }
}

