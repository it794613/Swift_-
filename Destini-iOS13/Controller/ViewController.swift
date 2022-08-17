//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var storyBrain = StoryBrain()
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let findNextNumber = sender.currentTitle!
        storyBrain.nextNumber(findNextNumber: findNextNumber)
        updateUI()
    }
    
    
    func updateUI(){
        storyLabel.text = storyBrain.getTitle()
        choice1Button.titleLabel!.text = storyBrain.get1ButtonText()
        choice2Button.titleLabel!.text = storyBrain.get2ButtonText()
    }

}

