//: Playground - noun: a place where people can play

import Foundation

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

class Fighter: Player {
    
    override init(name: String) {
        super.init(name: name)
        
        hitPoints = 8
    }
    
    func melee() {
        print("Attacks with Sword!")
    }
}

// Spell casters cast spells

class Spellcaster: Player {
    func castSpell() {
        print("Do magic stuff")
    }
                                                                      
class Wizard: Spellcaster {
    
    override init(name: String) {
        super.init(name: name)
        
        hitPoints = 4
    }
}

class Priest: Spellcaster {
    
    override init(name: String) {
        super.init(name: name)
        
        hitPoints = 6
    }
}



// Wizard adds a new method
    var mephisto = Wizard(name: "Mephisto")
    mephisto.castSpell()
    
    // Priest duplicates functionality
    var clancy = Priest(name: "Clancy")
    clancy.castSpell()

    var joe = Fighter(name: "Frank")
    joe.melee()




