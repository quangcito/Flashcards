//
//  ViewController.swift
//  Flashcards
//
//  Created by Nguyễn Đương Quang on 2/26/22.
//

import UIKit

struct Flashcard {
    var question: String
    var answer: String
}

class ViewController: UIViewController {


    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    
    // Array to hold our flashcards,
    var flashcards = [Flashcard]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func didTapOnFlashcard(_ sender: Any) {
        if frontLabel.isHidden == true {
            frontLabel.isHidden = false
        } else {
            frontLabel.isHidden = true
        }
    }
    
    func updateFlashcard(question: String, answer: String) {
        let flashcard = Flashcard(question: <#T##String#>, answer: <#T##String#>)
        frontLabel.text = flashcard.question
        backLabel.text = flashcard.answer
        frontLabel.isHidden = false
        
        // Adding flashcard in the flashcards array
        flashcards.append(flashcard)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
    // We know the destination of the segue is the Navigation Controller
    let navigationController = segue.destination as! UINavigationController
        
    // We know the Navigation Controller only contains a Creation View Controller
    let creationController = navigationController.topViewController as! CreationViewController
        
    // We set the flashcardsController property to self
    creationController.flashcardsController = self
    }
}

