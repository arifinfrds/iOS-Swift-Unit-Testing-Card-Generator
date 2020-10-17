# iOS-Unit-Testing-Card-Generator

My implementation of Unit Testing with using `given`, `when`, 'then' mindset.

Example: 
```swift
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

``` 
