//
//  Story.swift
//  Destini-iOS13
//
//  Created by Timothy Eggers on 11/24/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    let text: String
    let choices: [Choice]
    
    init(text: String, choices: [Choice]){
        self.text = text
     self.choices = choices
    }
}
