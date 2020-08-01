//
//  PhotoResponse.swift
//  PhotoAlbum
//
//  Created by Adrian Bucar on 8/1/20.
//  Copyright © 2020 Adrian Bucar. All rights reserved.
//

import Foundation

class PhotoResponse: Codable {
    let albumId: Int
    let id: Int
    let title: String
    let url: String
    let thumbnailUrl: String
}


