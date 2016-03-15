//
//  ViewController.swift
//  cityPicker
//
//  Created by LIVECT LAB on 13/03/2016.
//  Copyright © 2016 Livect Lab. All rights reserved.
//

import UIKit
import CityPicker


class ViewController: UIViewController, CityPickerViewControllerDelegate {
    
    @IBOutlet var cityLabel: UILabel!
    
    
    let cityPicker = CityPickerViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.cityPicker.delegate =  self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func showCityPicker(sender:UIButton){
        
        cityPicker.showCityPicker(self,backgroundColor: UIColor.clearColor(), blurView_hidden: false)
        
        
        
    }
    
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
    func CityPickerDidSelectRow(nation: String, city: String) {
        print("\(nation), \(city)")
    }
    
    func CityPickerDidPressedCancelButton() {
        print("canceled")
    }
    
    func CityPickerDidPressedSelectButton(CityPicker: CityPickerViewController, nation: String, city: String) {
        cityLabel.text = "\(city), \(nation)"
    }
}
