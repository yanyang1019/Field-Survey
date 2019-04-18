//
//  FieldsSuvrveyDetailViewController.swift
//  Field Survey
//
//  Created by Yan Yang on 4/10/19.
//  Copyright © 2019 Yan Yang. All rights reserved.
//

import UIKit

class FieldsSuvrveyDetailViewController: UIViewController {
    
    var fieldsSurvey: FieldSurvey?
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var fieldsIconImageView: UIImageView!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var dateLable: UILabel!
    @IBOutlet weak var descriptionLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        self.title = "Observation"
        
        fieldsIconImageView.image = fieldsSurvey?.classification.image
        titleLable.text = fieldsSurvey?.title
        
        if let date = fieldsSurvey?.date {
            dateLable.text = dateFormatter.string(from: date)
        } else {
            dateLable.text = ""
        }
        
        descriptionLable.text = fieldsSurvey?.description
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
