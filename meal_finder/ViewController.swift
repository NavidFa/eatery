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

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var alamoget: AlamoGet!
    
    @IBOutlet weak var testName: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self // table will know how to get it's data
        tableView.dataSource = self // table will know how to find it's data
        
        alamoget = AlamoGet()
        // Do any additional setup after loading the view, typically from a nib.
        download {
            self.updateMainUI()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var _arname: String!
    var arname = [String]()
    
    func download(completed: @escaping DownloadComplete) {
        Alamofire.request("https://meal-find-api.herokuapp.com/dishes").responseJSON { response in
            
            let result = response.result
            
            if let dict = result.value as? [Dictionary<String, AnyObject>] {
                print(dict.count)
                for obj in dict {
                    if let a = obj["name"] as? String {
                        //print(a)
                        self.arname.append(a)
                        print(self.arname)
                    }
                }
                self.tableView.reloadData()
                
                
                
            }
            completed()
        }
        completed()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arname.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        return cell
    }
    
    func updateMainUI() {
        testName.text = "\(alamoget.arname.count)"
    }


}

