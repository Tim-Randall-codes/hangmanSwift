//
//  ContentView.swift
//  HangmanSwift
//
//  Created by Tim Randall on 11/6/21.
//

import SwiftUI

struct ContentView: View {
    @State var displayMessage: String = ""
    @State var rightGuesses: Int = 0
    @State var wrongGuesses: Int = 0
    @State var randomWord = words[Int.random(in: 1...142)]
    //@State var wordDictionary = [String: Bool]()
    @State var userInput: String = ""
    @State var correctAnswers: String = ""
    var body: some View {
        ZStack{
            Color(.black)
            VStack{
                TextWidget(input: "^_^ Hangman ^_^")
                TextField("Enter a single letter here", text: $userInput).padding()
            }
        }
    }
    func startNewGame () {
        let rWLength: Int = randomWord.count
        for character in randomWord {
            if userInput.contains(character) {
                correctAnswers.append(character)
            }
            else {
                // put in lose stuff here
            }
            if correctAnswers.count == rWLength {
                //put in win stuff here
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
