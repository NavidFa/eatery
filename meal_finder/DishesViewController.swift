//
//  DishesViewController.swift
//  meal_finder
//
//  Created by Tyler Chase on 11/3/16.
//  Copyright © 2016 Bartholomew Krystman. All rights reserved.
//

import UIKit

class DishesViewController: UIViewController {

    var foodRestrictionArray:[String] = ["all"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "ShowFoodSegue" {
            if let vc = segue.destination as? ViewController {
                vc.foodRestrictionArray = foodRestrictionArray
                //vc.download()
            }
        }
    }
    
    


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

}
