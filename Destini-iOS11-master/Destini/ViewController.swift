//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var storyPlaceHolder = "story1"
    
    // Our strings
    let answer1a = "I\'ll hop in. Thanks for the help!"
    let answer1b = "Better ask him if he\'s a murderer first."
    let answer2a = "At least he\'s honest. I\'ll climb in."
    let answer2b = "Wait, I know how to change a tire."
    let answer3a = "I love Elton John! Hand him the cassette tape."
    let answer3b = "It\'s him or me! You take the knife and stab him."
    
    var newStories = listOfStories()

    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    // TODO Step 5: Initialise instance variables here
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       restartStory()
        
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        if(sender.tag == 1){
            checkStoryForTag1()
        } else if (sender.tag == 2) {
            checkStoryForTag2()
        }
        
        // TODO Step 4: Write an IF-Statement to update the views
                
        // TODO Step 6: Modify the IF-Statement to complete the story
        
    
    }
    
    func checkStoryForTag1(){
        if(storyPlaceHolder == "story1"){
             storyTextView.text =  newStories.getStory("story3")
            topButton.setTitle(answer3a, for: UIControlState.normal)
            bottomButton.setTitle(answer3b, for: UIControlState.normal)
            storyPlaceHolder = "story3"
        } else if storyPlaceHolder == "story3"{
            storyTextView.text = newStories.getStory("story6")
            topButton.setTitle("Would you like to restart?", for: UIControlState.normal)
            //bottomButton.setTitle("Would you like to restart?", for: UIControlState.normal)
             storyFinished()
            storyPlaceHolder = "story6"
        }
            else if storyPlaceHolder == "story2"{
                storyTextView.text =  newStories.getStory("story3")
                topButton.setTitle(answer3a, for: UIControlState.normal)
                bottomButton.setTitle(answer3b, for: UIControlState.normal)
                storyPlaceHolder = "story3"
            }
         else if(storyPlaceHolder == "story6"){
            restartStory()
        }
    }


    
    func checkStoryForTag2(){
        if(storyPlaceHolder == "story1"){
            storyTextView.text =  newStories.getStory("story2")
            topButton.setTitle(answer2a, for: UIControlState.normal)
            bottomButton.setTitle(answer2b, for: UIControlState.normal)
            storyPlaceHolder = "story2"
        } else if storyPlaceHolder == "story2"{
            storyTextView.text = newStories.getStory("story4")
            topButton.setTitle("Would you like to restart?", for: UIControlState.normal)
            //bottomButton.setTitle("Would you like to restart?", for: UIControlState.normal)
             storyFinished()
            storyPlaceHolder = "story6"
            
        }  else if storyPlaceHolder == "story3"{
            storyTextView.text = newStories.getStory("story5")
            topButton.setTitle("Would you like to restart?", for: UIControlState.normal)
            //bottomButton.setTitle("Would you like to restart?", for: UIControlState.normal)
            storyFinished()
            storyPlaceHolder = "story6"
            
        } else if(storyPlaceHolder == "story6"){
            restartStory()
        }    }

    func restartStory(){
        storyPlaceHolder = "story1"
        storyTextView.text =  newStories.getStory("story1")
        topButton.setTitle(answer1a, for: UIControlState.normal)
        bottomButton.setTitle(answer1b, for: UIControlState.normal)
        bottomButton.isHidden = false
    }
    
    
   
        func storyFinished(){
            self.bottomButton.isHidden = true
        }
    


}


