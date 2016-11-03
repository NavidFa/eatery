//
//  ViewController.swift
//  meal_finder
//
//  Created by Bartholomew Krystman on 10/29/16.
//  Copyright © 2016 Bartholomew Krystman. All rights reserved.
//

import UIKit
import Alamofire
//import SwiftyJSON

class ViewController: UIViewController {
    var alamoget: AlamoGet!
    
    @IBOutlet weak var testName: UILabel!
    
    
    
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }

    
    var _arname: String!
    
    var arname = [String]()
    
    struct post {
        let mainImage : UIImage!
        let name : String!
    }
    
    var posts = [post]()
    
    
   var foodRestrictionArray:[String] = ["all"]
    
    @IBAction func addVeganToArray(_ sender: AnyObject) {
        if foodRestrictionArray.contains("vegan"){
            foodRestrictionArray = foodRestrictionArray.filter{$0 != "vegan"}
        } else {
            foodRestrictionArray.append("vegan")
        }
        print(foodRestrictionArray)
    }
    
    
    @IBAction func addVegetarianToArray(_ sender: AnyObject) {
        if foodRestrictionArray.contains("vegetarian"){
            foodRestrictionArray = foodRestrictionArray.filter{$0 != "vegetarian"}
        } else {
            foodRestrictionArray.append("vegetarian")
        }
        print(foodRestrictionArray)
    }
    
    
    @IBAction func addGlutenFreeToArray(_ sender: AnyObject) {
        if foodRestrictionArray.contains("glutenFree"){
            foodRestrictionArray = foodRestrictionArray.filter{$0 != "glutenFree"}
        } else {
            foodRestrictionArray.append("glutenFree")
        }
        print(foodRestrictionArray)
    }
    
    
    @IBAction func addPaleoToArray(_ sender: AnyObject) {
        if foodRestrictionArray.contains("paleo"){
            foodRestrictionArray = foodRestrictionArray.filter{$0 != "paleo"}
        } else {
            foodRestrictionArray.append("paleo")
        }
        print(foodRestrictionArray)
    }
    
    
    @IBAction func addExcludesShellfishToArray(_ sender: AnyObject) {
        if foodRestrictionArray.contains("excludesShellfish"){
            foodRestrictionArray = foodRestrictionArray.filter{$0 != "excludesShellfish"}
        } else {
            foodRestrictionArray.append("excludesShellfish")
        }
        print(foodRestrictionArray)
    }
    
    
    @IBAction func addExcludesDairyToArray(_ sender: AnyObject) {
        if foodRestrictionArray.contains("excludesDairy"){
            foodRestrictionArray = foodRestrictionArray.filter{$0 != "excludesDairy"}
        } else {
            foodRestrictionArray.append("excludesDairy")
        }
        print(foodRestrictionArray)
    }
    
    
    @IBAction func addExcludesEggToArray(_ sender: AnyObject) {
        if foodRestrictionArray.contains("excludesEgg"){
            foodRestrictionArray = foodRestrictionArray.filter{$0 != "excludesEgg"}
        } else {
            foodRestrictionArray.append("excludesEgg")
        }
        print(foodRestrictionArray)
        
    }
    
    
    @IBAction func addExcludesNutsToArray(_ sender: AnyObject) {
        if foodRestrictionArray.contains("excludesNuts"){
            foodRestrictionArray = foodRestrictionArray.filter{$0 != "excludesNuts"}
        } else {
            foodRestrictionArray.append("excludesNuts")
        }
        print(foodRestrictionArray)
    }
    
    
    @IBAction func sendPostDataToApi(_ sender: AnyObject) {
        download{
        
        }
    }
    
    func download(completed: @escaping DownloadComplete) {
        

        
        let parametersOfArray: Parameters = [
            "restriction": foodRestrictionArray
        ]
        
        Alamofire.request("https://meal-find-api.herokuapp.com/postDishes", method: .post, parameters: parametersOfArray, encoding: JSONEncoding.default)
            //            .downloadProgress(queue: DispatchQueue.utility) { progress in
            //                print("Progress: \(progress.fractionCompleted)")
            //            }
            .validate { request, response, data in
                // Custom evaluation closure now includes data (allows you to parse data to dig out error messages if necessary)
                return .success
            }
            
            .responseJSON { response in
                //               debugPrint(response)
                //                var whatwhat = response.result.value
                //                if let value = response.result.value as? [Dictionary<String, AnyObject> {
                //                    print(value)
                //
                //
                //                }
                let result = response.result
                
                
                if let dict = result.value as? [Dictionary<String, AnyObject>] {
                    print(dict)
                    for obj in dict {
                        
                        // let mainImageURL = obj["photoUrl"] as! String
                        // debugPrint(obj["photoUrl"]!)
                        let nameOfDish = obj["name"] as! String
                        let urlString = obj["testPhotoUrl"]
                        if let url = NSURL(string: (urlString as? String)!){
                            
                            print(url)
                            
                            if let photoData = NSData(contentsOf: url as! URL){
                                let mainImageWork = UIImage(data: photoData as! Data)
                                self.posts.append(post.init(mainImage: mainImageWork!, name: nameOfDish))
                                //print(self.posts)
                                
                            }
                        }
                    }
                    print(self.posts)
                    
                    
                }

                //                        completed()
        }
        
        
    

        
                                    //        Alamofire.request("https://meal-find-api.herokuapp.com/postDishes", method: .post, parameters: parametersOfArray, encoding: JSONEncoding.default)
                                    //            //            .downloadProgress(queue: DispatchQueue.utility) { progress in
                                    //            //                print("Progress: \(progress.fractionCompleted)")
                                    //            //            }
                                    //            .validate { request, response, data in
                                    //                // Custom evaluation closure now includes data (allows you to parse data to dig out error messages if necessary)
                                    //                return .success
                                    //            }
                                    //            
                                    //            .responseJSON { response in
                                    //            
                                    //            let result = response.result
                                    //
                                    //            /*
                                    //            
                                    //            if let json = result.value as? [JSON] {
                                    //                print(json)
                                    //            }*/
                                    //            
                                    //            if let dict = result.value as? [Dictionary<String, AnyObject>] {
                                    //                print(dict)
                                    //                for obj in dict {
                                    //                    
                                    //                    // let mainImageURL = obj["photoUrl"] as! String
                                    //                    debugPrint(obj["photoUrl"]!)
                                    //                    
                                    //                    let mainImageURL =  URL(string: obj["photoUrl"]  as! String)
                                    //                    let mainImageData = NSData(contentsOf: mainImageURL!)
                                    //                    
                                    //                    let mainImageWork = UIImage(data: mainImageData as! Data)
                                    //                    
                                    //                    
                                    //                    let nameOfDish = obj["name"] as! String
                                    //                    
                                    //                    self.posts.append(post.init(mainImage: mainImageWork, name: nameOfDish))
                                    //                    //                                print(obj["name"] as! String)
                                    //                    //                                print(obj["photoUrl"] as! String)
                                    //                    
                                    //                    
                                    //                }
                                    //
                                    //                
                                    //            }
                                    //            completed()
                                    //        }
                                    //        completed()
    }
    

    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
////         let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath) as UITableViewCell
////        
//        //let newLabel = "yooo" as UILabel
//        //mainLabel.text = cell?.newLabel
//        
//        //var name = arname[indexPath.row]
//        //cell.cellLabel?.text = "Hello"
//        
////        let mainImageView = cell?.viewWithTag(2) as! UIImageView
////        
////        mainImageView.image = posts[indexPath.row].mainImage
////        
////        let mainLabel = cell?.viewWithTag(1) as! UILabel
////        
////        mainLabel.text = posts[indexPath.row].name
//        
////        let currentObj = arname[indexPath.row]
////        cell.textLabel?.text = currentObj
//        
////        return cell!
//        
//        return UITableViewCell
//    }
    
//    func updateMainUI() {
//        testName.text = "\(alamoget.arname.count)"
//    }*/

    
    

}

