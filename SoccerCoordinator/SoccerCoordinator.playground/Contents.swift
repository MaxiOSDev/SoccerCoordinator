//: Playground - noun: a place where people can play
// NOT FINAL VERSION! Check the playgroundpages folder for the completed version please.
import UIKit

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


var teamSharks: [[String: Any]] = []
var teamDragons: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []


func sort(by exp: Bool) -> Bool {
    let isExperienced = Bool()
    for player in players {
        let experiencedPlayer = player["isExperienced"] as! Bool
        if experiencedPlayer {
            isExperienced
        }
    }
    return isExperienced
}

