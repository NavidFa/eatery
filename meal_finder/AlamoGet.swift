//
//  AlamoGet.swift
//  meal_finder
//
//  Created by Bartholomew Krystman on 10/31/16.
//  Copyright © 2016 Bartholomew Krystman. All rights reserved.
//

import Foundation
import Alamofire

func Alamo() {
    let n = "7"
    
    Alamofire.request(URL(number: n)).responseJSON { response in
        let result = response.result // whenever we get a response in a JSON file we want to capture that data in raw format and pass that in as a directory
        if let dict = result.value as? Dictionary<String, AnyObject> {
            print("\(dict)")
            if let name = dict["name"] as? String {
                print(name)
            }
            if let eye_color = dict["eye_color"] as? String {
                print(eye_color)
            }
            if let films = dict["films"] as? NSArray {
                let arr = films
                print(arr)
            }
            
        }
    }
}
