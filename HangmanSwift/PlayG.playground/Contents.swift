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
print(stuff)
print(newString)
