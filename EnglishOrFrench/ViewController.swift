//
//  ViewController.swift
//  EnglishOrFrench
//
//  Created by Hartley, Keira on 2019-11-26.
//  Copyright © 2019 Hartley, Keira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var textInput: UITextView!
    @IBOutlet weak var labelOutput: UILabel!
    
    var sCount = 0
    var tCount = 0
    
    
    //MARK: Methods
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Function for what happens when the user presses the button
    
    @IBAction func findLanguage(_ sender: Any) {
        
        
        //Guard against no input and input that isn't a string
        guard let phraseInput = textInput.text, phraseInput.count > 0 else {
            labelOutput.text = "Please enter text to analyze."
            return
        }
        
        // Set the variables as 0 to reset the counts
        sCount = 0
        tCount = 0
    
        //Loop through phrase to find s,S,t and T
        for character in phraseInput {
            
            if character == "s" || character == "S" {
                sCount+=1
                
            } else if character == "t" || character == "T" {
                tCount+=1
            }
            
        }
        
        //Final calculation to find what language it probably
        if tCount > sCount {
            labelOutput.text = "This looks like English"
            
        }else if sCount >= tCount {
            labelOutput.text = "This looks like French"
            
        }
        
}
}
