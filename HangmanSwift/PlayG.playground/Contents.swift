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
let words = ["piano", "guitar", "flute", "kookaburra", "tiger", "apple", "bigmac",
             "walrus", "egg", "grass", "project", "explosion", "destruction",
             "mayhem", "weight", "towel", "cannabis", "incomprehensibility",
             "interdisciplinary", "consequential", "surreptitious", "external",
             "hypothetical", "proliferation", "nuclear", "excessive", "god",
             "opposite", "offspring", "abberant", "abrasive", "abundant",
             "elephant", "program", "code", "synergy", "vertical", "cyber",
             "dynamic", "fight", "look", "journey", "disk", "extend", "timber",
             "influencer", "astronomy", "genetic", "cylinder", "enhance", "science",
             "temperature", "corrosive", "blanket", "surround", "permanent",
             "asteroid", "protection", "racket", "kingdom", "common", "theory",
             "practice", "electric", "further", "magnetic", "intermediate",
             "movement", "design", "matter", "gift", "measurement", "volume",
             "density", "table", "stool", "sheet", "gun", "lamp", "bus", "path",
             "dirt", "sun", "cloud", "cloth", "hot", "bat", "goth", "isolate",
             "split", "negative", "droplet", "float", "evaporate", "attract",
             "herbivore", "humid", "swing", "induct", "vertebrate", "liquid",
             "brilliant", "dinosaur", "reactor", "road", "bus", "knight", "ninja",
             "blade", "sing", "play", "talk", "school", "university", "police",
             "retail", "road", "box", "ox", "igloo", "soil", "feudal", "ancient",
             "modern", "tattoo", "combine", "economy", "plate", "cup", "fork",
             "spoon", "kettle", "refrigerator", "floor", "roof", "picture",
             "keyboard", "computer", "lamp", "wood", "metal", "program"]

print(words.count)
