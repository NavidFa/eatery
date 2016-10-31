//
//  SwiftyForJson.swift
//  meal_finder
//
//  Created by Bartholomew Krystman on 10/31/16.
//  Copyright © 2016 Bartholomew Krystman. All rights reserved.
//

import Foundation
import SwiftyJSON


func parseJSON() {
    let path = Bundle.main.path(forResource: "jsonFile", ofType: "json") as String?
    print("------------------------------\(path)---------------------")
}

