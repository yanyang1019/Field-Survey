//
//  FieldSurveyJSONLoader.swift
//  Field Survey
//
//  Created by Yan Yang on 4/10/19.
//  Copyright © 2019 Yan Yang. All rights reserved.
//

import Foundation

class FieldSurveyJSONLoader {
    
    class func load(fileName: String) -> [FieldSurvey] {
        var surveys = [FieldSurvey]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            surveys = FieldSurveyJSONParser.parse(data)
        }
        return surveys
    }
}
