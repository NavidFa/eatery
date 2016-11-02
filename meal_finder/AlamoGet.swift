//
//  AlamoGet.swift
//  meal_finder
//
//  Created by Bartholomew Krystman on 10/31/16.
//  Copyright © 2016 Bartholomew Krystman. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireImage

class AlamoGet {
    
    var _name: String!
    
    var name: String {
        if _name == nil {
            _name = ""
        }
        return _name
    }
    
    var _arname: String!
    var arname = [String]()
    
    
}
