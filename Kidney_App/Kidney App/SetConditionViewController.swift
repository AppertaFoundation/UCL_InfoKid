//
//  SetConditionViewController.swift
//  Kidney App
//
//  Created by Bogdan Nitescu on 06/02/2017.
//  Copyright © 2017 Bogdan Nitescu. All rights reserved.
//

// View Controller for "Set condition" menu

import UIKit

class SetConditionViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    // Child Name Text Field
    @IBOutlet weak var childNameTextField: UITextField!
    @IBOutlet weak var testLabel: UILabel!
    
    // Date of Birt Text Field
    @IBOutlet weak var DOBTextField: UITextField!
    
    // Picker View
    @IBOutlet weak var genrePickerView: UIPickerView!
    
    // Input received from user
    var tField: UITextField!
    
    // Array of Strings for Genre Picker View
    let genre:[String] = ["Boy","Girl"]
    let bladder:[String] = ["Normal","Thick Walled"]
    
    // String for storing the child's genre received from the Picker View.
    var childGenre:String = (UserDefaults.standard.string(forKey: "genre"))!
    var bladderCondition:String = (UserDefaults.standard.string(forKey: "bladderCondition"))!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        childNameTextField.text = UserDefaults.standard.string(forKey: "childName") ?? ""
        DOBTextField.text = UserDefaults.standard.string(forKey: "DOB") ?? ""
        openAlert()
    }
    
    // PICKER VIEW SET-UP
    
    // Components
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // ROWS
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 0
        {
            return genre.count;
        }
        if pickerView.tag == 1
        {
            return bladder.count;
        }
        return 1;
    }
    
    // Values
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 0
        {
            return genre[row];
        }
        if pickerView.tag == 1
        {
            return bladder[row];
        }
        return "";
    }
    
    // Asign selected value
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 0
        {
            childGenre = genre[row];
        }
        if pickerView.tag == 1
        {
            bladderCondition = bladder[row];
        }
    }
    
    
    
    
    // Hide Keyboard after user press "DONE"
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        DOBTextField.resignFirstResponder();
        childNameTextField.resignFirstResponder();
    
        return false
    }
    
    
    
    
    // Saving changes.
    
    @IBAction func didSaveChanges(_ sender: Any) {
        
        // Checking if entered password is correct.
        let userPasswordStored = UserDefaults.standard.string(forKey: "userPassword")  // Stored password
        let userAlertPassword = UserDefaults.standard.string(forKey: "alertPassword")  // Introduced password
        
        if (userAlertPassword == userPasswordStored)
        {
            // Save introduced data if passwords match
            
            // Inform user.
            displayMyAlertMessage(userMessage: "Changes saved succesfully! You are no longer allowed to make any changes. If you want so, please come back to this menu and introduce the password again! This is a safety measure.")
            
            // Store data.
            UserDefaults.standard.set(childNameTextField.text, forKey: "childName");
            UserDefaults.standard.set(DOBTextField.text, forKey: "DOB");
            UserDefaults.standard.set(childGenre, forKey: "genre");
            UserDefaults.standard.set(bladderCondition, forKey: "bladderCondition")
            
            // Sync.
            UserDefaults.standard.synchronize();
            
            
            
            UserDefaults.standard.set(" ", forKey: "alertPassword")
            UserDefaults.standard.synchronize()
            
        }
        else
        {
            // Passwords do no match.
            displayMyAlertMessage(userMessage: "You are not allowed to make changes! Please come back and enter a correct password!")
            return;
        }
}
 
    
    
    // Custom function to display a simple text alert message.
    
    func displayMyAlertMessage (userMessage:String)
    {
        let myAlert:UIAlertController = UIAlertController(title: "", message: userMessage, preferredStyle: .alert)
        
        let okAction:UIAlertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        myAlert.addAction(okAction)
        
        self.present(myAlert, animated: true)
        {
            print("Present complete")
        }
    }

 
    // Confirming identity alert.
    // Required the user to enter the password.
    // Introduced password is stored locally and checked with the user's password.
    // Pop's an alert that will inform the user if the introduced password is correct or incorrect.
    
    func openAlert()
    {
        var tField: UITextField!
        
        func handleCancel(alertView: UIAlertAction!)
        {
            print("Cancelled !!")
        }
        
        // Initial alert notifier.
        let alert = UIAlertController(title: "Confirm Identity", message: "Please enter your password to be able to save future changes:", preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: configurationTextField)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler:
            
        {
            (UIAlertAction) in
            UserDefaults.standard.set(" ", forKey: "alertPassword")
            UserDefaults.standard.synchronize()
        }))
        
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler:{ (UIAlertAction) in
            print("Done !!")
            print("Item : \(self.tField.text!)")
            UserDefaults.standard.set(self.tField.text!, forKey: "alertPassword")
            UserDefaults.standard.synchronize()
            let userPasswordStored = UserDefaults.standard.string(forKey: "userPassword")
            let userAlertPassword = UserDefaults.standard.string(forKey: "alertPassword")
            if (userPasswordStored == userAlertPassword)
            {
                self.displayMyAlertMessage(userMessage: "Password correct! You will now be able to save your changes.")
            }
            else
            {
                self.displayMyAlertMessage(userMessage: "Password incorrect! You should come back to this menu and enter the correct password, otherwise your changes will not be saved.")
            }
        }))
        self.present(alert, animated: true, completion: {
            print("completion block")
        })
        return
    }
    
    
    // TextField for alert
    func configurationTextField(textField: UITextField!)
    {
        textField.placeholder = "Enter the password"
        // Password field must be secured (eg. *******)
        textField.isSecureTextEntry = true
        tField = textField
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        childNameTextField.resignFirstResponder();
        DOBTextField.resignFirstResponder();
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
