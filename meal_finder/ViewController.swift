//
//  ViewController.swift
//  meal_finder
//
//  Created by Bartholomew Krystman on 10/29/16.
//  Copyright © 2016 Bartholomew Krystman. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    var alamoget = AlamoGet()
    
    @IBOutlet weak var testName: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        alamoget.download {
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

