//
//  CardGeneratorTests.swift
//  CardTests
//
//  Created by Arifin Firdaus on 17/10/20.
//

import XCTest
@testable import Card

class CardGeneratorTests: XCTestCase {
    
    func test_GenerateCard_GivenNumberOfPair0_ShouldReturn0Cards() {
        // given
        let sut = CardGenerator()
        
        // when
        let cards = try! sut.generateCard(numberOfPair: 0)

        // then
        XCTAssertEqual(cards.count, 0)
    }
    
    func test_GenerateCard_GivenNumberOfPair1_ShouldReturn2Cards() {
        // given
        let sut = CardGenerator()
        
        // when
        let cards = try! sut.generateCard(numberOfPair: 1)

        // then
        XCTAssertEqual(cards.count, 2)
    }
    
    func test_GenerateCard_GivenNumberOfPair2_ShouldReturn4Cards() {
        // given
        let sut = CardGenerator()
        
        // when
        let cards = try! sut.generateCard(numberOfPair: 2)

        // then
        XCTAssertEqual(cards.count, 4)
    }
    
    func test_GenerateCard_GivenNumberOfPair1000_ShouldReturn2000Cards() {
        // given
        let sut = CardGenerator()
        
        // when
        let cards = try! sut.generateCard(numberOfPair: 1000)

        // then
        XCTAssertEqual(cards.count, 2000)
    }
    
    func test_GenerateCard_GivenNumberOfPairMinus1_ShouldThrowInvalidInputError() {
        // given
        let sut = CardGenerator()
        var capturedError: CardGenerator.Error? = nil
        
        // when
        do {
            let _ = try sut.generateCard(numberOfPair: -1)
        } catch(let error) {
            capturedError = error as? CardGenerator.Error
        }

        // then
        XCTAssertNotNil(capturedError)
        XCTAssertEqual(capturedError!, .invalidNumberOfPair)
    }
    
    func test_GenerateCard_GivenNumberOfPair2_ShouldReturn4CardsWithNoEmptyImageName() {
        // given
        let sut = CardGenerator()
        
        // when
        let cards = try! sut.generateCard(numberOfPair: 2)

        // then
        cards.forEach { card in
            XCTAssertNotEqual(card.imageName, "")
        }
    }
    
}

