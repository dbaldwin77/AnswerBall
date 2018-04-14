//
//  Data.swift
//  AnswerBall
//
//  Created by David Baldwin on 4/12/18.
//  Copyright © 2018 David Baldwin. All rights reserved.
//


import Foundation
import AVFoundation

class Data : NSObject, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer = AVAudioPlayer()
    
    var answers = [
        "I'm not a mindreader!",
        "All indicators point to YES!",
        "All indicators point to NO!",
        "Watch your language!",
        "It seems highly unlikely.",
        "Please speak up!",
        "It seems highly likely.",
        "Yes, indeed!",
        "Absolutely not!",
        "Please ask again later...",
        "Seriously?",
        "That was a dumb question.",
        "I was wondering the same thing!",
        "I can't answer that truthfully.",
        "What do you think?",
        "Imagine that!",
        "Really?",
        "Did you just ask that?",
        "Of course.",
        "Ask a higher power.",
        "The force is with you.",
        "The force is not near.",
        "You're unbelievable!",
        "Can I get a translation please?",
        "I'm gonna guess... NO!",
        "I'm gonna guess... YES!",
        "It would seem so.",
        "That does not seem to be true.",
        "I need a new profession!",
        "The odds are against that.",
        "The odds are in your favor.",
        "Can we skip this one?",
        "Ask a different question please.",
        "I'm doing good, yes I know you didn't ask.",
        "My connection to the stars was lost.",
        "Do you want the truth?",
        "I can see no answer but yes."
    ]
    
    func playSound() {
            
       
        let filePath = Bundle.main.path(forResource: "shakesound", ofType:"wav")
            
        if let sound = filePath {
            do {
                try audioPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound))
                audioPlayer.play()
            }
            catch
            {
                print(error)
            }
            }
            else
            {
                print("error")
            }
    }
    
    func getAnswer() -> String {
        let random = Int(arc4random_uniform(UInt32(answers.count)))
        let result = answers[random]
        return result
    }
    
}
