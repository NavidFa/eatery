//
//  Constants.swift
//  meal_finder
//
//  Created by Bartholomew Krystman on 10/31/16.
//  Copyright © 2016 Bartholomew Krystman. All rights reserved.
//

import Foundation

typealias DownloadComplete = () -> () // Tell our function when we are complete, for AlamoFire use


func URL(number: String) -> String {
    let myURL = "https://swapi.co/api/people/\(number)/"
    return myURL
}
