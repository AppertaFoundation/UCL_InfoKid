//
//  LoginViewController.swift
//  Kidney App
//
//  Created by Bogdan Nitescu on 01/02/2017.
//  Copyright © 2017 Bogdan Nitescu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func loginButtonTapped(_ sender: Any)
    {
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        
        let userEmailStored = UserDefaults.standard.string(forKey: "userEmail")
        let userPasswordStored = UserDefaults.standard.string(forKey: "userPassword")
        
        if (userEmailStored == userEmail)
        {
            if (userPassword == userPasswordStored)
            {
                // Login is successfull
                UserDefaults.standard.set(true, forKey: "isUserLoggedIn");
                UserDefaults.standard.synchronize();
                self.dismiss(animated: true, completion: nil)
            }
            else
            {
                displayMyAlertMessage(userMessage: "The password is incorrect. Please try again.")
            }
        }
        else
        {
            displayMyAlertMessage(userMessage: "The username is incorrect or net registered yet. Please try again or register.")
        }
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        userEmailTextField.resignFirstResponder()
        userPasswordTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userEmailTextField.resignFirstResponder()
        userPasswordTextField.resignFirstResponder()
        return true
    }
    
    func displayMyAlertMessage (userMessage:String)
    {
        let myAlert:UIAlertController = UIAlertController(title: "Informing", message: userMessage, preferredStyle: .alert)
        
        let okAction:UIAlertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        myAlert.addAction(okAction)
        
        self.present(myAlert, animated: true)
        {
            print("Present complete")
        }
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
