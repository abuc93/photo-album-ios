//
//  PhotoService.swift
//  PhotoAlbum
//
//  Created by Adrian Bucar on 8/1/20.
//  Copyright © 2020 Adrian Bucar. All rights reserved.
//

import UIKit

func getPhotos(completionHandler: @escaping ([PhotoResponse]) -> Void) {
    // #2
    let url = URL(string: "https://jsonplaceholder.typicode.com/photos")!
    
    // #3
    let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, urlResponse, error) in
        // #5 async
        if let error = error {
            print(error)
            return
        }
        
        let decoder = JSONDecoder()
        
        let photos: [PhotoResponse] = try! decoder.decode([PhotoResponse].self, from: data!)
        
        print(photos.count)
        
        completionHandler(photos)
    })
    
    // #4
    task.resume()
}

func downloadImage(url: URL, completionHandler: @escaping (UIImage) -> Void) {
    // #8
    let task = URLSession.shared.dataTask(with: url) { (data, urlResponse, error) in
        if let error = error {
            print(error)
            return
        }
        
        let image: UIImage = UIImage(data: data!)!
        
        completionHandler(image)
    }
    // #9
    task.resume()
}
