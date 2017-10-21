//
//  Stories.swift
//  Destini
//
//  Created by onji on 10/18/17.
//  Copyright © 2017 London App Brewery. All rights reserved.
//

import Foundation

class listOfStories {
    var myNewDictArray = [String: String]()
    init(){
        myNewDictArray["story1"] = "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\"."
        
  
        myNewDictArray["story2"] = "He nods slowly, unphased by the question."
        
        myNewDictArray["story3"] = "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box."
        
        myNewDictArray["story4"] = "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?"
        
        myNewDictArray["story5"] = "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."
        
        myNewDictArray["story6"] = "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""
    
    }
    
    func getStory(_ key: String) -> String{
        //var keyValue1 = myNewDictArray[keyValue]
     
        
        return String(myNewDictArray[key]!)
    }

}







