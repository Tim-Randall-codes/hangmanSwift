import UIKit

var stuff:[(name: String, value: Bool)] = []
stuff.append((name: "Tim", value: false))
stuff.append((name: "f", value: false))
stuff.append((name: "v", value: false))
var newString: String = ""
for var item in stuff {
    if item.name == "f" {
        item.value = true
    }
}
for item in stuff {
    if item.value == false {
        newString.append("*")
    }
    else {
        newString.append(item.name)
    }
}
print(stuff[0].name)

struct Letter {
    var char: String
    var guessed: Bool
    init (char: String, guessed: Bool) {
        self.char = char
        self.guessed = guessed
    }
}
var checkingWord = [Letter]()
checkingWord.append(Letter(char: "a", guessed: false))
checkingWord.append(Letter(char: "b", guessed: false))
checkingWord.append(Letter(char: "c", guessed: false))
print(checkingWord)
for index in checkingWord.indices {
    if checkingWord[index].char == "b" {
        checkingWord[index].guessed = true
    }
}
print(checkingWord)

