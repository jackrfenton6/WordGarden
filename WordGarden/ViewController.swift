//
//  ViewController.swift
//  WordGarden
//
//  Created by Jack Fenton on 2/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordsGuessedLabel: UILabel!
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    @IBOutlet weak var wordsMissedLabel: UILabel!
    @IBOutlet weak var wordsInGame: UILabel!
    
    
    @IBOutlet weak var wordsBeingRevealedLabel: UILabel!
    @IBOutlet weak var guessLetterTextField: UITextField!
    @IBOutlet weak var guessLetterButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var gameStatusMessageLabel: UILabel!
    @IBOutlet weak var flowerImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let text = guessLetterTextField.text!
        guessLetterButton.isEnabled = !(text.isEmpty)
    }
    
    func updateUIAfterGuess() {
        guessLetterTextField.resignFirstResponder()
        guessLetterTextField.text! = ""
        guessLetterTextField.isEnabled = false
    }
    
    @IBAction func guessLetterTextFieldChanged(_ sender: UITextField) {
        let text = guessLetterTextField.text!
        guessLetterButton.isEnabled = !(text.isEmpty)
    }
    
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        updateUIAfterGuess()
    }
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        updateUIAfterGuess()
    }
    @IBAction func playAgainButtonPressed(_ sender: Any) {
    }
    
}

