//
//  NormalAnatomyViewController.swift
//  Kidney App
//
//  Created by Bogdan Nitescu on 06/02/2017.
//  Copyright © 2017 Bogdan Nitescu. All rights reserved.
//

import UIKit

class NormalAnatomyViewController: UIViewController {
    @IBOutlet weak var componentDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        componentDescription.text = "Kidney, Ureter, Bladder, Urethra."
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func bladderPress(_ sender: Any) {
        componentDescription.text = "BLADDER: The bladder is a round, muscular bag that sits low down in the pelvis. The bladder fills up with urine like a balloon. When full, it sends signals to the brain which ‘tell’ the bladder muscles to push urine out through the urethra. This is how we pass urine."
        
    }
    @IBAction func urethraPress(_ sender: Any) {
        componentDescription.text = "The urethra is a tube that carries urine from the bladder to the outside of the body. We urinate through the opening.\nIn boys and men, the urethra passes through the penis. It is much longer than in girls and women."
        
        
    }
    
    @IBAction func ureterPress(_ sender: Any) {
        componentDescription.text = "URETER: The two ureters are long tubes. They carry urine from the kidneys to the bladder."
    }
    
    @IBAction func kidneyPress(_ sender: Any) {
        componentDescription.text = "KIDNEY: The two kidneys remove substances our bodies no longer need. They filter blood and make urine (wee). Most of us have two kidneys. The kidneys are on either side of our spine (backbone), near the bottom edge of our ribs."
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
