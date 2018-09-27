//
//  AddAppointmentViewController.swift
//  Kidney App
//
//  Created by Bogdan Nitescu on 09/03/2017.
//  Copyright © 2017 Bogdan Nitescu. All rights reserved.
//

import UIKit

class AddAppointmentViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var typePicker: UIPickerView!
    @IBOutlet weak var placeTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!

    var appointmentTitle:String = ""
    var appointmentType:String = "Visit"
    var appointmentPlace:String = ""
    var appointmentDate:String = ""
    let type:[String] = ["Visit","Scan","Operation","Treatment Check","Regular Check"]
    override func viewDidLoad() {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy HH:mm"
        appointmentDate = formatter.string(from: datePicker.date)
        titleTextField.text = ""
        placeTextField.text = ""
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        titleTextField.resignFirstResponder()
        placeTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        titleTextField.resignFirstResponder()
        placeTextField.resignFirstResponder()
        return true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return type.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return type[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        appointmentType = type[row]
        print(appointmentType)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pickerDidChange(_ sender: Any) {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy HH:mm"
        appointmentDate = formatter.string(from: datePicker.date)
    }
    
    
    @IBAction func didSave(_ sender: Any) {
        Singleton.data.append(appointmentData(title: titleTextField.text!, type: appointmentType, place: placeTextField.text!, date: appointmentDate))
        
        titleTextField.text = ""
        placeTextField.text = ""
        
        
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
