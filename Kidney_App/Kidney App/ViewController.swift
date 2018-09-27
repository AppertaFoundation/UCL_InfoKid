//
//  ViewController.swift
//  Kidney App
//
//  Created by Bogdan Nitescu on 01/02/2017.
//  Copyright © 2017 Bogdan Nitescu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool)
        
        {
            
            let isUserLoggedIn = UserDefaults.standard.bool(forKey: "isUserLoggedIn");
            
            if(!isUserLoggedIn)
            {
                self.performSegue(withIdentifier: "loginView", sender: self);
            }
            
            
        }
    
    @IBAction func logOutButtonTapped(_ sender: Any) {
        UserDefaults.standard.set(false,forKey:"isUserLoggedIn");
        UserDefaults.standard.synchronize();
        self.performSegue(withIdentifier: "loginView", sender: self);

    }
    @IBAction func didPressMoreInfo(_ sender: Any) {
        UIApplication.shared.openURL(URL(string: "http://www.infokid.org.uk")!)
    }
    
    
    }


