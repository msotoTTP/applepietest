//
//  ViewController.swift
//  applepietest
//
//  Created by Mathew Soto on 4/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var treeImageView: UIImageView!
    @IBOutlet var correctWordLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    var listOfWords = ["football", "basketball", "baseball", "soccer", "hockey"]
    let incorrectMovesAllowed = 7
    var totalWins = 0
    var totalLosses = 0
    var currentGame: Game!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newRound()
    }
    
    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed)
        updateUI()
    }
    
    func updateUI() {
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }

    @IBAction func letterButtonPressed(_ sender: UIButton){
        //read the letter
        //figure out if letter is in the word
        if let letterString = sender.titleLabel?.text {
            print("title label text:", letterString)
        } else {
            print("Title label text doesn't exist")
        }
        
        if let letterString = sender.configuration?.title {
            print("configuration title:", letterString)
        } else {
            print("configuration title doesn't exist")
        }
        
        if let letterString = sender.currentTitle {
//            let letter = Character(letterString.lowercased())
            print("current title:", letterString)
        } else {
            print("Current title doesn't exist")
        }
        
        if let letterString = sender.title(for: .normal) {
            print("title for normal state:", letterString)
        } else {
            print("Title for normal state doesn't exist")
        }
        
        if let letterString = sender.title(for: .selected) {
            print("title for selected state:", letterString)
        } else {
            print("Title for selected state doesn't exist")
        }
        
        
//        sender.isEnabled = false
    }
    
}

