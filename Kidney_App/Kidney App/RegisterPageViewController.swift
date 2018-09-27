//
//  RegisterPageViewController.swift
//  Kidney App
//
//  Created by Bogdan Nitescu on 01/02/2017.
//  Copyright © 2017 Bogdan Nitescu. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    
    @IBOutlet weak var repeatPasswordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func alreadyHaveAnAccountPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        userEmailTextField.resignFirstResponder()
        userEmailTextField.resignFirstResponder()
        repeatPasswordTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userEmailTextField.resignFirstResponder()
        userEmailTextField.resignFirstResponder()
        repeatPasswordTextField.resignFirstResponder()
        return true
    }
    
    @IBAction func registerButtonTapped(_ sender: Any)
    {
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        let userRepeatPassword = repeatPasswordTextField.text;
        
        // Check for empty fields
        
        if (userEmail == "" || userPassword == "" || userRepeatPassword == "")
        {
            displayMyAlertMessage(userMessage: "All fields are required!");
            return;
        }
        
        // Check if passwords  match
        if (userPassword != userRepeatPassword)
        {
            displayMyAlertMessage(userMessage: "Passwords do not match each other!");
            return;
        }
        
        // Store data
        UserDefaults.standard.set(userEmail, forKey: "userEmail");
        UserDefaults.standard.set(userPassword, forKey: "userPassword");
        
        UserDefaults.standard.set("Normal", forKey: "LeftKidneyCondition");
        UserDefaults.standard.set("Normal", forKey: "LeftUretersCondition");
        UserDefaults.standard.set("None", forKey: "LeftRefluxCondition");
        UserDefaults.standard.set("Normal", forKey: "bladderCondition");
        
        UserDefaults.standard.set("Normal", forKey: "RightKidneyCondition");
        UserDefaults.standard.set("Normal", forKey: "RightUretersCondition");
        UserDefaults.standard.set("None", forKey: "RightRefluxCondition");
        
        
        UserDefaults.standard.set("", forKey: "childName");
        UserDefaults.standard.set("Boy", forKey: "genre");
        UserDefaults.standard.set("", forKey: "DOB");
        
        UserDefaults.standard.synchronize();
        
        
        // Display alert message with conformation
        let myAlert:UIAlertController = UIAlertController(title: "Inform", message: "Registration complete", preferredStyle: .alert)
        let okAction:UIAlertAction = UIAlertAction(title: "OK", style: .default)
        {
            (_:UIAlertAction) in self.dismiss(animated: true, completion: nil)
        }
        myAlert.addAction(okAction);
        self.present(myAlert, animated: true, completion: nil)
    }
    
    func displayMyAlertMessage (userMessage:String)
    {
        let myAlert:UIAlertController = UIAlertController(title: "Alert", message: userMessage, preferredStyle: .alert)
        
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
