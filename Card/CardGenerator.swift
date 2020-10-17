//
//  CardGenerator.swift
//  Card
//
//  Created by Arifin Firdaus on 17/10/20.
//

import Foundation

class Card {
    var imageName = ""
    var isFlipped = false
    var isCannotClose = false
}

class CardGenerator {
    
    enum Error: Swift.Error {
        case invalidNumberOfPair
    }
    
    func generateCard(numberOfPair: Int) throws -> [Card] {
        if numberOfPair <= -1 {
            throw Error.invalidNumberOfPair
        }
        if numberOfPair == 0 {
            return []
        }
        var listCard = [Card]()
        for _ in 1...numberOfPair {
            let randomNumber = Int.random(in: 1...4)
            let cardOne = Card()
            cardOne.imageName = "Artboard \(randomNumber)"
            listCard.append(cardOne)
            let cardTwo = Card()
            cardTwo.imageName = "Artboard \(randomNumber)"
            listCard.append(cardTwo)
        }
        return listCard
    }
}
