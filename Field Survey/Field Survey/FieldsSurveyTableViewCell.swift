//
//  FieldsSurveyTableViewCell.swift
//  Field Survey
//
//  Created by Yan Yang on 4/17/19.
//  Copyright © 2019 Yan Yang. All rights reserved.
//

import UIKit

class FieldsSurveyTableViewCell: UITableViewCell {

    @IBOutlet weak var fieldsIconImageView: UIImageView!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var dateLable: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
