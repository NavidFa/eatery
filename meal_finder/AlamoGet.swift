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
    
    func download(completed: @escaping DownloadComplete) {
        Alamofire.request("https://meal-find-api.herokuapp.com/dishes").responseJSON { response in
            
            let result = response.result
            
            if let dict = result.value as? [Dictionary<String, AnyObject>] {
                //print(dict)
                if let name = dict[0]["name"] as? String {
                    //print(name)
                    self._name = name
                    print(self._name)
                }
                
            }
            completed()
        }
        completed()
    }
}
