//
//  photos.swift
//  Pursuit-Core-Persistence-Lab
//
//  Created by Kary Martinez on 9/30/19.
//  Copyright © 2019 Kary Martinez. All rights reserved.
//

import Foundation

struct allPhotos: Codable {

    let totalHits: Int
    let hits:HitWrapper
    let total: Int
    
//
//    static func getFilteredPhotosByName(arr: [allPhotos], searchString: String ) -> [allPhotos]{
//        return arr.filter{$0.totalHits.contains(searchString.lowercased())}
//
//
//    }

    
}

struct HitWrapper: Codable {
    let largeImageURL: String
    let webformatHeight, webformatWidth, likes, imageWidth: Int
    let id, userID, views, comments: Int
    let pageURL: String
    let imageHeight: Int
    let webformatURL: String
    let previewHeight: Int
    let tags: String
    let downloads: Int
    let user: String
    let userImageURL: String
    let previewURL: String
}
