//: Playground - noun: a place where people can play

import UIKit
// Array collection of Dictionaries by name, heigh, experience, guardian
var players: [[String : Any]] = [["name": "Joe Smith", "height": 42, "isExperienced": true, "guardian":"Jim and Jan Smith"],
                                 
                                 ["name": "Jill Tanner", "height": 36, "isExperienced": true, "guardian":"Clara Tanner "],
                                 
                                 ["name": "Bill Bon", "height": 43,"isExperienced": true, "guardian":"Sara and Jenny Bon "],
                                 
                                 ["name": "Eva Gordon", "height": 45,"isExperienced": false, "guardian":"Wendy and Mike Gordon "],
                                 
                                 ["name": "Matt Gill", "height": 40,"isExperienced": false, "guardian":"Charles and Sylvia Gill "],
                                 
                                 ["name": "Kimmy Stein", "height": 41,"isExperienced": false, "guardian":"Charles and Sylvia Gill"],
                                 
                                 ["name": "Sammy Adams", "height": 45,"isExperienced": false, "guardian":"Jeff Adams "],
                                 
                                 ["name": "Karl Saygan", "height": 42,"isExperienced": true, "guardian":"Heather Bledsoe"],
                                 
                                 [ "name": "Suzane Greenberg", "height": 44,"isExperienced": true, "guardian":"Henrietta Dumas"],
                                 
                                 ["name": "Sal Dali", "height": 41,"isExperienced": false, "guardian":"Gala Dali "],
                                 
                                 ["name": "Joe Kavalier", "height": 39,"isExperienced": false, "guardian":"Sam and Elaine Kavalier "],
                                 
                                 ["name": "Ben Finkelstein", "height": 44,"isExperienced": false, "guardian":"Aaron and Jill Finkelstein"],
                                 
                                 ["name": "Diego Soto", "height": 41,"isExperienced": true, "guardian":"Robin and Sarika Soto "],
                                 
                                 ["name": "Choloe Alaska","height": 47,"isExperienced": false, "guardian":"David and Jamie Alaska "],
                                 
                                 ["name": "Arnold Willis","height": 43,"isExperienced": false, "guardian":"Claire Willis "],
                                 
                                 ["name": "Phillip Helm", "height": 44,"isExperienced": true, "guardian":"Thomas Helm and Eva Jones"],
                                 
                                 ["name": "Les Clay", "height": 42,"isExperienced": true,"guardian":"Wynonna Brown"],
                                 
                                 ["name": "Herschel Krustofski", "height": 45,"isExperienced": true, "guardian":"Hyman and Rachel Krustofski"]]

// The teams in their own array of Dictionaries
var teamSharks: [[String: Any]] = []
var teamDragons: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []


// Iterating experience
func ladsWithXp(in players: [[String : Any]]) -> Int {
    
    var ladsWithXp = 0
  
    for player in players {
         let hasExp = player["isExperienced"] as! Bool
        if hasExp {
            ladsWithXp += 1
        }
    }
    
    
    return ladsWithXp
}
// Iteration of players in order to sort by experience to own respective teams
for player in players {
    if let hasExp = player["isExperienced"] as? Bool {
        // Sorting by less exp.
        if hasExp == true {
            if ladsWithXp(in: teamSharks) <= ladsWithXp(in: teamRaptors) && ladsWithXp(in: teamSharks) <= ladsWithXp(in: teamDragons) {
                teamSharks.append(player)
            } else if ladsWithXp(in: teamDragons) <= ladsWithXp(in: teamRaptors) && ladsWithXp(in: teamDragons) <= ladsWithXp(in: teamSharks) {
                teamDragons.append(player)
            } else if ladsWithXp(in: teamRaptors) <= ladsWithXp(in: teamSharks) && ladsWithXp(in: teamRaptors) <= ladsWithXp(in: teamDragons) {
                teamRaptors.append(player)
            }
        } else {
            if teamSharks.count <= teamRaptors.count && teamSharks.count <= teamDragons.count {
                teamSharks.append(player)
            
        
            
            } else if teamDragons.count <= teamRaptors.count && teamDragons.count <= teamSharks.count {
                teamDragons.append(player)
            } else {
                teamRaptors.append(player)
            }
        }
    }
}

// Letters portion
//Function that safely unwraps optionals
func practiceLetter() -> [String] {
let letters = [String]()
for player in teamSharks {
    if let name = player["name"], let guardian = player["guardian"] {
        print("To \(guardian),\n \(name) has a practice seesion for team Sharks at March 17, 3pm.")
    }

}
print("------------------------")
for player in teamDragons {
    if let name = player["name"], let guardian = player["guardian"] {
        print("To \(guardian),\n \(name) has a practice seesion for team Dragons at March 17, 1pm.")
    }
}
print("------------------------")
for player in teamRaptors {
    if let name = player["name"], let guardian = player["guardian"] {
        print("To \(guardian),\n \(name) has a practice seesion for team Raptors at March 18, 1pm.")
    }
}

return letters
}
//To show up in console
practiceLetter()



















