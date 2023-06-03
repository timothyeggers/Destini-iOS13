//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Timothy Eggers on 11/24/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    let stories: [Story] = [
        Story(
            text: "You're tieing your shoelaces when a kid kicks dust in your face. You are rapidly blinking, and cannot see.",
            choices: [Choice(label: "Throw a few punches at the approximate location", destination: 1),
                      Choice(label: "Bitterly ask 'Who kicked dust in my eyes?'", destination: 4)]
        ),
        Story(text: "You swing at air, hitting nothing.",
              choices: [Choice(label: "...", destination: 2)]
        ),
        Story(
            text: "A boyish voice responds 'You deserve it, lackie.'",
            choices: [Choice(label: "Get into stance and charge at the direction of the voice", destination: 6),
                      Choice(label: "Apologize for losing your temper", destination: 3)]
        ),
        Story(
            text: "The boy replies, 'No worries, sorry about losing mine.'",
            choices: [Choice(label: "...", destination: 5)]
        ),
        Story(
            text: "Your vision starts to clear. A boyish voice replies 'I didn't mean to, I was just jogging by!' ",
            choices: [Choice(label: "You forgive them, and continue about your day", destination: 5)]
        ),
        Story(
            text: "You lived happily ever after...",
            choices: [Choice(label: "Play Again", destination: 0)]
        ),
        Story(
            text: "You trip on the grounds uneven terrain, as the perpetrator runs away.",
            choices: [Choice(label: "You died...", destination: 0)]
        )
    ]
    
    var storyIndex = 0
    
    mutating func getStory() -> Story {
        if storyIndex >= stories.count {
            storyIndex = 0
        }
        return stories[storyIndex]
    }
    
    mutating func makeChoice(_ userChoice: String) {
        let choices = stories[storyIndex].choices
        for i in 0..<choices.count {

            // progress the story if the user choice matches an available choice.
            if userChoice == choices[i].label {
                storyIndex = choices[i].destination
                break
            }
            
            // reset the story if the last iteration doesn't match the user choice.
            if i == choices.count - 1 {
                storyIndex = 0
            }
        }
    }
}
