//
//  Child'sAnatomyViewController.swift
//  Kidney App
//
//  Created by Bogdan Nitescu on 06/03/2017.
//  Copyright © 2017 Bogdan Nitescu. All rights reserved.
//

import UIKit

class Child_sAnatomyViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var dobLabel: UILabel!
    @IBOutlet weak var rightKidneyLabel: UILabel!
    @IBOutlet weak var rightUreterLabel: UILabel!
    @IBOutlet weak var rightRefluxLabel: UILabel!
    @IBOutlet weak var leftKidneyLabel: UILabel!
    @IBOutlet weak var leftUreterLabel: UILabel!
    @IBOutlet weak var leftRefluxLabel: UILabel!
    @IBOutlet weak var bladderLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = UserDefaults.standard.string(forKey: "childName")
        genreLabel.text = UserDefaults.standard.string(forKey: "genre")
        dobLabel.text = UserDefaults.standard.string(forKey: "DOB")
        descriptionLabel.text = "Press one of the components to see details of your child's specific condition."
//        rightKidneyLabel.text = UserDefaults.standard.string(forKey: "RightKidneyCondition")
//        rightUreterLabel.text = UserDefaults.standard.string(forKey: "RightUretersCondition")
//        rightRefluxLabel.text = UserDefaults.standard.string(forKey: "RightRefluxCondition")
//        leftKidneyLabel.text = UserDefaults.standard.string(forKey: "LeftKidneyCondition")
//        leftUreterLabel.text = UserDefaults.standard.string(forKey: "LeftUretersCondition")
//        leftRefluxLabel.text = UserDefaults.standard.string(forKey: "LeftRefluxCondition")
//        bladderLabel.text = UserDefaults.standard.string(forKey: "bladderCondition")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func rightKPressed(_ sender: Any) {
        if (UserDefaults.standard.string(forKey: "RightKidneyCondition") == "Normal")
        {
            descriptionLabel.text = "Right Kidney: NORMAL\n The kidney is in good condition. No actions should be taken."
        }
        
        if (UserDefaults.standard.string(forKey: "RightKidneyCondition") == "Scarred/dysplastic")
        {
            descriptionLabel.text = "Right Kidney: Scarred\nKidney does not fully develop in the womb. The affected kidney does not have normal function – which means that does not work as well as a normal kidney.  It is usually smaller than usual, and may have some cysts, which are like sacs filled with liquid.\nIt is not always possible to know why renal dysplasia happens."
        }
        
        if (UserDefaults.standard.string(forKey: "RightKidneyCondition") == "Dilated (Swollen)")
        {
            descriptionLabel.text = "Right Kidney: Dilated\nDilated (swollen): one or both of the baby’s kidneys are stretched and swollen because they are holding on to urine (wee). They swell up and become stretched. Also called Antenatal hydronephrosis.\n1 Need to go back to the hospital for more ultrasound scans.\n2 may be referred to specialist healthcare professionals, such as a paediatric    urologist or a paediatric nephrologist"
        }
        
    }
    @IBAction func leftKPressed(_ sender: Any) {
        if (UserDefaults.standard.string(forKey: "LeftKidneyCondition") == "Normal")
        {
            descriptionLabel.text = "Left Kidney: NORMAL\n The kidney is in good condition. No actions should be taken."
        }
        
        if (UserDefaults.standard.string(forKey: "LeftKidneyCondition") == "Scarred/dysplastic")
        {
            descriptionLabel.text = "Left Kidney: Scarred\nKidney does not fully develop in the womb. The affected kidney does not have normal function – which means that does not work as well as a normal kidney.  It is usually smaller than usual, and may have some cysts, which are like sacs filled with liquid.\nIt is not always possible to know why renal dysplasia happens."
        }
        
        if (UserDefaults.standard.string(forKey: "LeftKidneyCondition") == "Dilated (Swollen)")
        {
            descriptionLabel.text = "Left Kidney: Dilated\nDilated (swollen): one or both of the baby’s kidneys are stretched and swollen because they are holding on to urine (wee). They swell up and become stretched. Also called Antenatal hydronephrosis.\n1 Need to go back to the hospital for more ultrasound scans.\n2 may be referred to specialist healthcare professionals, such as a paediatric    urologist or a paediatric nephrologist"
        }

    }
    @IBAction func rightUPressed(_ sender: Any) {
        if (UserDefaults.standard.string(forKey: "RightUretersCondition") == "Normal")
        {
            descriptionLabel.text = "Right Ureter: NORMAL\n The Ureter is working normal; no actions should be taken."
        }
        
        if (UserDefaults.standard.string(forKey: "RightUretersCondition") == "Mild Dilatation")
        {
            descriptionLabel.text = "Right Ureter: MILD DILATATION\nA dilated ureter, called a hydroureter, often occurs because an obstruction somewhere is causing the fluid to back up causing the ureter - the tube that runs from the kidney to the bladder to become larger - i.e. become dilated.  That condition often occurs in pregnancy and can occur as a result of an infection. "
        }
        
        if (UserDefaults.standard.string(forKey: "RightUretersCondition") == "Moderate / severe dilataion")
        {
            descriptionLabel.text = "Right Ureter: MODERATE DILATATION\nA dilated ureter, called a hydroureter, often occurs because an obstruction somewhere is causing the fluid to back up causing the ureter - the tube that runs from the kidney to the bladder to become larger - i.e. become dilated.  That condition often occurs in pregnancy and can occur as a result of an infection. "
        }
    }
    @IBAction func leftUPressed(_ sender: Any) {
        if (UserDefaults.standard.string(forKey: "LeftUretersCondition") == "Normal")
        {
            descriptionLabel.text = "Left Ureter: NORMAL\n The Ureter is working normal; no actions should be taken."
        }
        
        if (UserDefaults.standard.string(forKey: "LeftUretersCondition") == "Mild Dilatation")
        {
            descriptionLabel.text = "Left Ureter: MILD DILATATION\nA dilated ureter, called a hydroureter, often occurs because an obstruction somewhere is causing the fluid to back up causing the ureter - the tube that runs from the kidney to the bladder to become larger - i.e. become dilated.  That condition often occurs in pregnancy and can occur as a result of an infection. "
        }
        
        if (UserDefaults.standard.string(forKey: "LeftUretersCondition") == "Moderate / severe dilataion")
        {
            descriptionLabel.text = "Left Ureter: MODERATE DILATATION\nA dilated ureter, called a hydroureter, often occurs because an obstruction somewhere is causing the fluid to back up causing the ureter - the tube that runs from the kidney to the bladder to become larger - i.e. become dilated.  That condition often occurs in pregnancy and can occur as a result of an infection. "
        }

    }
    @IBAction func rightRPressed(_ sender: Any) {
        if (UserDefaults.standard.string(forKey: "RightRefluxCondition") == "None")
        {
            descriptionLabel.text = "Right Reflux: NONE\n"
        }
        
        if (UserDefaults.standard.string(forKey: "RightRefluxCondition") == "Mild reflux")
        {
            descriptionLabel.text = "Right Reflux: MILD REFLUX\nWhen children go for a wee, some urine refluxes, or passes back up the wrong way, towards one or both kidneys."
        }
        
        if (UserDefaults.standard.string(forKey: "RightRefluxCondition") == "Moderate / severe reflux")
        {
            descriptionLabel.text = "Right Reflux: MODERATE REFLUX\nModerate/severe reflux is worse stage than Mild reflux.\n1 For Mild reflux,  children may need to have some medicine.\n2 For Moderate reflux, children need further treatment."
        }
    }
    @IBAction func leftRPressed(_ sender: Any) {
        if (UserDefaults.standard.string(forKey: "LeftRefluxCondition") == "None")
        {
            descriptionLabel.text = "Left Reflux: NONE\n"
        }
        
        if (UserDefaults.standard.string(forKey: "LeftRefluxCondition") == "Mild reflux")
        {
            descriptionLabel.text = "Left Reflux: MILD REFLUX\nWhen children go for a wee, some urine refluxes, or passes back up the wrong way, towards one or both kidneys."
        }
        
        if (UserDefaults.standard.string(forKey: "LeftRefluxCondition") == "Moderate / severe reflux")
        {
            descriptionLabel.text = "Left Reflux: MODERATE REFLUX\nModerate/severe reflux is worse stage than Mild reflux.\n1 For Mild reflux,  children may need to have some medicine.\n2 For Moderate reflux, children need further treatment."
        }

    }
    @IBAction func bladderPressed(_ sender: Any) {
        if (UserDefaults.standard.string(forKey: "bladderCondition") == "Normal")
        {
            descriptionLabel.text = "Bladder: NORMAL\n"
        }
        if (UserDefaults.standard.string(forKey: "bladderCondition") == "Thick Walled")
        {
            descriptionLabel.text = "Bladder: Thick Walled\nThe wall of bladder is thicker than normal. This is something that should be easilty treated, if following the advice from your medic."
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
