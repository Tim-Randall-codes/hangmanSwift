//
//  ContentView.swift
//  HangmanSwift
//
//  Created by Tim Randall on 11/6/21.
//

import SwiftUI

struct ContentView: View {
    @State var entry1: String = ""
    @State var announce: String = ""
    func game() {
        announce = "pass"
    }
    var body: some View {
        VStack{
            Text("^_^ Hangman ^_^")
            HStack{
                Text("Wins/loses")
                Text("Wrong guesses: x/7")
            }
            Image("end")
            Text(dword)
            Text(announce)
            HStack{
                Text("Enter a letter:")
                TextField("", text: $entry1)
                    .keyboardType(.alphabet)
                Button("Check", action: {
                    if entry1.count > 1 || entry1 == "" {announce = "Please enter only single letters"}
                    else {game()}
                })
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
