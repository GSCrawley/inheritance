import Foundation

// You are making a new RPG game. It will have several 
// character classes. 

// # Challenge:

// Define a base class: Player.
// with these properties:

// var hitPoints: Int
// var name: String

// Player should also implement an adventure method.
// This method should print "\(name) goes adventuring!"t


class Player {
    var name: String
    var hitPoints: Int
    
    init(name: String) {
        self.name = name
        self.hitPoints = 0
    }
    
    func adventure() {
        print("\(name) goes adventuring!")
    }
}


// # Challenge:

// Define a class Fighter. It should be a sub class 
// of Player and implement a melee() method that 
// prints "\(name) attacks with sword!"
// Fighters have 8 hitPoints

class Fighter: Player {
    
    override init(name: String) {
        super.init(name: name)
        self.hitPoints = 8
    }
    
    func melee() {
        print("\(name) attacks with sword!")
    }
}

var frank = Fighter(name: "Frank")
frank.adventure()
frank.melee()
