//
//  ViewController.swift
//  Word Scramble
//
//  Created by Andre Dias on 27/09/16.
//  Copyright © 2016 Andre Dias. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UITableViewController {
    
    var allWords = [String]()
    var usedWords = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        if let startWordsPath = Bundle.main.path(forResource: "start", ofType: "txt"){
            if let startWords = try? String(contentsOfFile: startWordsPath){
                allWords = startWords.components(separatedBy: "\n")
            }else{
                allWords = ["silkWorm"]
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

