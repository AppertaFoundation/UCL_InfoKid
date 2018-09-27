//
//  CustomTableViewCell.swift
//  Kidney App
//
//  Created by Bogdan Nitescu on 09/03/2017.
//  Copyright © 2017 Bogdan Nitescu. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var dateField: UILabel!
    @IBOutlet weak var typeField: UILabel!
    
    public func updateCell(_type:String, _date:String)
    {
        self.typeField?.text = _type
        self.dateField?.text = _date
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
