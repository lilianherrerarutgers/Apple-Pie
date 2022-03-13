//
//  Game.swift
//  Apple Pie
//
//  Created by Lilian Herrera on 3/13/22.
//

import Foundation

struct Game {
    var word: String
    var incorrectMoveRemaining: Int
    var guessedLetters: [Character]
    
    var formattedWord: String {
       var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }

        return guessedWord
    }
        
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMoveRemaining -= 1
        }
    }
}

