//
//  GenrePickerView.swift
//  Kidney App
//
//  Created by Bogdan Nitescu on 27/02/2017.
//  Copyright © 2017 Bogdan Nitescu. All rights reserved.
//

import UIKit

class GenrePickerView: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    let genre:[String] = ["Boy","Girl"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
