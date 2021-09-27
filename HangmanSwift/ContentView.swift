//
//  ContentView.swift
//  HangmanSwift
//
//  Created by Tim Randall on 11/6/21.
//

import SwiftUI

struct ContentView: View {
    @State var displayMessage: String = ""
    @State var wrongGuesses: Int = 0
    @State var randomWord = ""
    @State var checkingWord: [(letter: String, guessed: Bool)] = []
    @State var userInput: String = ""
    @State var displayWord = ""
    @State var buttonDisplay: String = "Check Answer"
    @State var newGameSwitch: Bool = true
    @State var lettersToGuess: Int = 0
    var body: some View {
        ZStack{
            Color(.black)
            VStack{
                TextWidget(input: "^_^ Hangman ^_^")
                TextWidget(input: randomWord)
                TextWidget(input: displayWord)
                TextWidget(input: userInput)
                TextWidget(input: String(wrongGuesses))
                HStack {
                    ImageView(number: wrongGuesses)
                    TextWidget(input: displayMessage)
                }
                TextField("Enter a single letter here", text: $userInput)
                    .padding()
                    .textCase(.lowercase)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                if newGameSwitch == false {
                    Button(action:{
                        if validateInput(x: userInput) == true {
                            displayMessage = ""
                            checkAnswer()
                            createDisplayWord()
                        }
                        else {
                            displayMessage = "Please enter a single letter"
                        }
                    }, label:{
                        ButtonDesign(input: "Check Answer")
                    })
                }
                else {
                    Button(action:{
                        createNewGame()
                        createDisplayWord()
                    }, label:{
                        ButtonDesign(input: "Press for New Game")
                    })
                }
            }
        }
    }
    
    func validateInput (x: String) -> Bool {
        var letPass: Bool = false
        if userInput == "" || userInput.count > 1 {
            letPass = false
        }
        else {
            letPass = true
        }
        return letPass
    }
    
    func createNewGame () {
        randomWord = words[Int.random(in: 1...142)]
        lettersToGuess = randomWord.count
        for character in randomWord {
            checkingWord.append((letter: String(character), guessed: false))
        }
        newGameSwitch = false
    }
    
    func checkAnswer () {
        userInput = userInput.lowercased()
        for var item in checkingWord {
            if item.letter == userInput {
                item.guessed = true
                lettersToGuess -= 1
            }
        }
    }
    
    func createDisplayWord () {
        displayWord = ""
        for item in checkingWord {
            if item.guessed == true {
                displayWord.append(item.letter)
            }
            else {
                displayWord.append("*")
            }
        }
    }
}

struct TextWidget: View {
    var input: String
    var body: some View {
        Text(input)
            .padding()
            .foregroundColor(.white)
    }
}

struct ButtonDesign: View {
    var input: String
    var body: some View {
        Text(input).padding()
            .background(Color.white)
            .cornerRadius(20)
            .foregroundColor(.black)
    }
}

struct ImageView: View {
    var number: Int
    var body: some View {
        if number == 0 {
            Image("one").resizable().frame(width: 100, height: 100)
        }
        else if number == 1 {
            Image("one").resizable().frame(width: 100, height: 100)
        }
        else if number == 2 {
            Image("two").resizable().frame(width: 100, height: 100)
        }
        else if number == 3 {
            Image("three").resizable().frame(width: 100, height: 100)
        }
        else if number == 4 {
            Image("four").resizable().frame(width: 100, height: 100)
        }
        else if number == 5 {
            Image("five").resizable().frame(width: 100, height: 100)
        }
        else if number == 6 {
            Image("six").resizable().frame(width: 100, height: 100)
        }
        else if number == 7 {
            Image("end").resizable().frame(width: 100, height: 100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
