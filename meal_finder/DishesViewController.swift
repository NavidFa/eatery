//
//  DishesViewController.swift
//  meal_finder
//
//  Created by Tyler Chase on 11/3/16.
//  Copyright © 2016 Bartholomew Krystman. All rights reserved.
//

import UIKit

class DishesViewController: UIViewController {

    @IBOutlet weak var backgroundImg: UIImageView!
    
    var foodRestrictionArray:[String] = ["all"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //only apply the blur if the user hasn't disabled transparency effects
//        if !UIAccessibilityIsReduceTransparencyEnabled() {
//            self.view.backgroundColor = UIColor.clear
//            
//            let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
//            let blurEffectView = UIVisualEffectView(effect: blurEffect)
//            //always fill the view
//            blurEffectView.frame = self.view.bounds
//            blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//            
//            self.view.addSubview(blurEffectView) //if you have more UIViews, use an insertSubview API to place it where needed
//        } else {
//            self.view.backgroundColor = UIColor.black
//        }
        
//        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.extraLight)
//        let blurEffectView = UIVisualEffectView(effect: blurEffect)
//        blurEffectView.frame = view.bounds
//        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        view.addSubview(blurEffectView)

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
    
    
    
    @IBAction func addVeganAndToggleButton(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if foodRestrictionArray.contains("vegan"){
            foodRestrictionArray = foodRestrictionArray.filter{$0 != "vegan"}
        } else {
            foodRestrictionArray.append("vegan")
        }
        print(foodRestrictionArray)
    }


    @IBAction func addVeganToArray(_ sender: AnyObject) {
      
    }
    
    
    
    @IBAction func addVegetarianAndToggle(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if foodRestrictionArray.contains("vegetarian"){
            foodRestrictionArray = foodRestrictionArray.filter{$0 != "vegetarian"}
        } else {
            foodRestrictionArray.append("vegetarian")
        }
        print(foodRestrictionArray)
    }
    
    @IBAction func addVegetarianToArray(_ sender: AnyObject) {

    }
    
    
    @IBAction func addGlutenFreeAndToggle(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if foodRestrictionArray.contains("glutenFree"){
            foodRestrictionArray = foodRestrictionArray.filter{$0 != "glutenFree"}
        } else {
            foodRestrictionArray.append("glutenFree")
        }
        print(foodRestrictionArray)
    }
    
    @IBAction func addGlutenFreeToArray(_ sender: AnyObject) {

    }
    
    
    @IBAction func addPaleoAndToggle(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if foodRestrictionArray.contains("paleo"){
            foodRestrictionArray = foodRestrictionArray.filter{$0 != "paleo"}
        } else {
            foodRestrictionArray.append("paleo")
        }
        print(foodRestrictionArray)
    }
    
    @IBAction func addPaleoToArray(_ sender: AnyObject) {
    }
    
    
    @IBAction func addExcludesShellfishAndToggle(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if foodRestrictionArray.contains("excludesShellfish"){
            foodRestrictionArray = foodRestrictionArray.filter{$0 != "excludesShellfish"}
        } else {
            foodRestrictionArray.append("excludesShellfish")
        }
        print(foodRestrictionArray)
    }
    
    @IBAction func addExcludesShellfishToArray(_ sender: AnyObject) {
    }
    
    
    @IBAction func addExcludesDairyAndToggle(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if foodRestrictionArray.contains("excludesDairy"){
            foodRestrictionArray = foodRestrictionArray.filter{$0 != "excludesDairy"}
        } else {
            foodRestrictionArray.append("excludesDairy")
        }
        print(foodRestrictionArray)
    }
    
    @IBAction func addExcludesDairyToArray(_ sender: AnyObject) {
    }
    
    
    @IBAction func addExcludesEggAndToggle(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if foodRestrictionArray.contains("excludesEgg"){
            foodRestrictionArray = foodRestrictionArray.filter{$0 != "excludesEgg"}
        } else {
            foodRestrictionArray.append("excludesEgg")
        }
        print(foodRestrictionArray)
    }
    
    @IBAction func addExcludesEggToArray(_ sender: AnyObject) {
    }
    
    @IBAction func addExcludesNutsAndToggle(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if foodRestrictionArray.contains("excludesNuts"){
            foodRestrictionArray = foodRestrictionArray.filter{$0 != "excludesNuts"}
        } else {
            foodRestrictionArray.append("excludesNuts")
        }
        print(foodRestrictionArray)
    }
    
    @IBAction func addExcludesNutsToArray(_ sender: AnyObject) {
    }

}
