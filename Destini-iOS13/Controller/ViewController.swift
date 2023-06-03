//
//  Choice.swift
//  Destini-iOS13
//
//  Created by Timothy Eggers on 11/24/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton!){
        print("choice made")
        
        storyBrain.makeChoice(sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        let story = storyBrain.getStory()
        
        let choice1 = storyBrain.getStory().choices[0].label
        var choice2 = ""
        
        if story.choices.indices.contains(1) {
            choice2 = storyBrain.getStory().choices[1].label
        }
        
        storyLabel.text = storyBrain.getStory().text
        
        choice1Button.isEnabled = true
        choice2Button.isEnabled = true
        
        choice1Button.setTitle(choice1, for: .normal)
        choice2Button.setTitle(choice2, for: .normal)
        
        if (choice2 == "") {
            choice2Button.isEnabled = false
        }
        
    }
}

