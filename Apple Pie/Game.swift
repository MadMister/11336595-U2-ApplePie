//
//  Game.swift
//  Apple Pie
//
//  Created by Jan Marten Sevenster on 16/02/2018.
//  Copyright © 2018 John Appleseed. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemainig: Int
    var guessedLetters: [Character]
    var formattedWord: String {
        var guessedWord = ""
        for letter in word.characters {
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
        if !word.characters.contains(letter) {
            incorrectMovesRemainig -= 1
        }
    }
}
