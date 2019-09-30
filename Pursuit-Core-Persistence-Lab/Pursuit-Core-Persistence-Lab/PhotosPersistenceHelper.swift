//
//  PhotosPersistenceHelper.swift
//  Pursuit-Core-Persistence-Lab
//
//  Created by Kary Martinez on 9/30/19.
//  Copyright © 2019 Kary Martinez. All rights reserved.
//

import Foundation

struct allPhotosPersistenceHelper {
    static let manager = allPhotosPersistenceHelper()
    
    func save(newallPhotos: allPhotos) throws {
        try persistenceHelper.save(newElement: newallPhotos)
    }
    
    func getPhotos() throws -> [allPhotos] {
        return try persistenceHelper.getObjects()
    }
    
    private let persistenceHelper = PersistenceHelper<allPhotos>(fileName: "allPhotos.plist")
    
    private init() {}
}
