//
//  QuestionBank.swift
//  Quizzly

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        list.append(Question(text: "I look for friendliness in a friend rather than attractiveness", matchingBear: "Grizz"))
        
        list.append(Question(text: "My friends/family would describe me as a calm person", matchingBear: "Ice Bear"))
        
        list.append(Question(text: "I am extroverted", matchingBear: "Grizz"))
        
        list.append(Question(text: "I sometimes refuse to watch horror movies/thrillers", matchingBear: "Panda"))
        
        list.append(Question(text: "I tend to eat more healthy food at a restaurant", matchingBear: "Panda"))
        
        list.append(Question(text: "I might also order something bold when going out to dinner", matchingBear: "Ice Bear"))
        
        list.append(Question(text: "I am generally not picky with food", matchingBear: "Grizz"))
        
        list.append(Question(text: "Sometimes I wish I could feel more confident about myself", matchingBear: "Panda"))
        
        list.append(Question(text: "I am the loud person in my group of friends", matchingBear: "Grizz"))
        
        list.append(Question(text: "Before an exam, I usually feel like I can ACE it with no problem", matchingBear: "Ice Bear"))
        
        list.append(Question(text: "I don't usually worry about exams because I always do what I can (no hard feelings if something goes wrong!)", matchingBear: "Grizz"))
        
        list.append(Question(text: "After an exam, I am never so sure about how I did", matchingBear: "Panda"))
        
        list.append(Question(text: "Getting active (sports/video games) is a good way to relieve stress for me", matchingBear: "Grizz"))
        
        list.append(Question(text: "I prefer relaxing activities or things involving creativity over being active", matchingBear: "Panda"))
        
        list.append(Question(text: "In others' eyes, I am a dependable/responsible person", matchingBear: "Ice Bear"))
        
        list.append(Question(text: "I only hang out with a very small group of friends", matchingBear: "Ice Bear"))
        
    }
}
