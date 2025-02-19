//
//  AppErrors.swift
//  Pursuit-Core-Persistence-Lab
//
//  Created by Kary Martinez on 9/30/19.
//  Copyright © 2019 Kary Martinez. All rights reserved.
//

import Foundation

enum AppError: Error {
    case unauthenticated
    case invalidJSONResponse
    case couldNotParseJSON(rawError: Error)
    case noInternetConnection
    case badURL
    case badStatusCode
    case noDataReceived
    case notAnImage
    case other(rawError: Error)
}
