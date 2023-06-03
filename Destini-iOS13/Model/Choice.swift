//
//  Choice.swift
//  Destini-iOS13
//
//  Created by Timothy Eggers on 11/24/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Choice {
    
    let label: String
    
    let destination: Int
    
    init(label: String, destination: Int){
        self.label = label
        self.destination = destination
    }
}
