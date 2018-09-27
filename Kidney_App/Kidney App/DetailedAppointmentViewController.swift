//
//  DetailedAppointmentViewController.swift
//  Kidney App
//
//  Created by Bogdan Nitescu on 09/03/2017.
//  Copyright © 2017 Bogdan Nitescu. All rights reserved.
//

import UIKit

class DetailedAppointmentViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var placeLabel: UILabel!
    
    var details: appointmentData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = details?.title
        typeLabel.text = details?.type
        dateLabel.text = details?.date
        placeLabel.text = details?.place
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
