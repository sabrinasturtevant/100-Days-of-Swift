//
//  Person.swift
//  Project10
//
//  Created by Sabrina Sturtevant on 1/19/20.
//  Copyright © 2020 Sabrina Sturtevant. All rights reserved.
//

import UIKit

class Person: NSObject {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}
