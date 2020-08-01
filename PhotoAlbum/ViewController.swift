//
//  ViewController.swift
//  PhotoAlbum
//
//  Created by Adrian Bucar on 7/31/20.
//  Copyright © 2020 Adrian Bucar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        
        // #1
        getPhotos(completionHandler: receivePhotos(_:))
    }
    
    // #6
    func receivePhotos(_ photos: [PhotoResponse]) {
        print("------------------------------")
        for photo in photos {
            print(photo.albumId)
            print(photo.title)
            print(photo.id)
            print("------------------------------")
            
            let url = URL(string: photo.url)!
            // #7
            downloadImage(url: url, completionHandler: receiveImage(_:))
        }
    }
    
    // #10-5010
    func receiveImage(_ image: UIImage) {
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}

