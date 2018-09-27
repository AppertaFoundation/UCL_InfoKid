//
//  LeftSideViewController.swift
//  Kidney App
//
//  Created by Bogdan Nitescu on 06/03/2017.
//  Copyright © 2017 Bogdan Nitescu. All rights reserved.
//

import UIKit

class RightSideViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let kidney:[String] = ["Normal","Scarred/dysplastic","Dilated (Swollen)"]
    let ureters:[String] = ["Normal","Mild Dilatation","Moderate / severe dilataion"]
    let reflux:[String] = ["None","Mild reflux" , "Moderate / severe reflux"]
    
    var kidneyCondition:String = ""
    var uretersCondition:String = ""
    var refluxCondition:String = ""
    var bladderCondition:String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserDefaults.standard.set(kidney[0], forKey: "RightKidneyCondition");
        UserDefaults.standard.set(ureters[0], forKey: "RightUretersCondition");
        UserDefaults.standard.set(reflux[0], forKey: "RightRefluxCondition");
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        if pickerView.tag == 0
        {
            return kidney.count
        }
        if pickerView.tag == 1
        {
            return ureters.count
        }
        if pickerView.tag == 2
        {
            return reflux.count
        }
        
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 0
        {
            return kidney[row]
        }
        if pickerView.tag == 1
        {
            return ureters[row]
        }
        if pickerView.tag == 2
        {
            return reflux[row]
        }
        
        return ""
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 0
        {
            kidneyCondition = kidney[row]
            print(kidneyCondition)
            UserDefaults.standard.set(kidneyCondition, forKey: "RightKidneyCondition");
            UserDefaults.standard.synchronize();
            
        }
        if pickerView.tag == 1
        {
            uretersCondition = ureters[row]
            print(uretersCondition)
            UserDefaults.standard.set(uretersCondition, forKey: "RightUretersCondition");
            UserDefaults.standard.synchronize();
        }
        if pickerView.tag == 2
        {
            refluxCondition = reflux[row]
            print(refluxCondition)
            UserDefaults.standard.set(refluxCondition, forKey: "RightRefluxCondition");
            UserDefaults.standard.synchronize();
        }
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
