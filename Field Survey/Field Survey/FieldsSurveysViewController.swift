//
//  FieldsSurveysViewController.swift
//  Field Survey
//
//  Created by Yan Yang on 4/10/19.
//  Copyright © 2019 Yan Yang. All rights reserved.
//

import UIKit

class FieldsSurveysViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var fieldsSurveysTableView: UITableView!
    
    let fieldsSurveys = FieldSurveyJSONLoader.load(fileName: "field_observations")
    
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        self.fieldsSurveysTableView.rowHeight = 80
     

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fieldsSurveys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FieldsSurveyCell", for: indexPath)
        
        if let cell = cell as? FieldsSurveyTableViewCell {
            let fieldsSurvey = fieldsSurveys[indexPath.row]
            cell.fieldsIconImageView.image = fieldsSurvey.classification.image
            cell.titleLable.text = fieldsSurvey.title
            
            cell.dateLable.text = dateFormatter.string(from: fieldsSurvey.date)
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FieldsSuvrveyDetailViewController,
            let row = fieldsSurveysTableView.indexPathForSelectedRow?.row {
            destination.fieldsSurvey = fieldsSurveys[row]
        }
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
