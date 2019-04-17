//
//  Field.swift
//  Field Survey
//
//  Created by Yan Yang on 4/9/19.
//  Copyright © 2019 Yan Yang. All rights reserved.
//

import UIKit

enum Field: String {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "icon")
    }
}
