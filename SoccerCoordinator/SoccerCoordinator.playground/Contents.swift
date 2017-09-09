//My Project

                                                // PART 1

// All players listied individually and sorted by their name, height, soccer experience and guardians' name(s).

let playerOne: [String: Any] = ["name": "Joe Smith", "Height(inches)": 42, "Soccer Experience": true, "Guardian's Name(s)": "Jim and Jan Smith"]
   
let playerTwo: [String: Any] = ["name": "Jill Tanner", "Height(inches)": 36, "Soccer Experience": true, "Guardian's Name(s)": "Clara Tanner"]
    
let playerThree: [String: Any] = ["name": "Bill Bon", "Height(inches)": 43, "Soccer Experience": true, "Guardian's Name(s)": "Sara and Jenny Bon"]
    
let playerFour: [String: Any] = ["name": "Eva Gordon", "Height(inches)": 45, "Soccer Experience": false, "Guardian's Name(s)": "Wendy and Mike Gordon"]
    
let playerFive: [String: Any] = ["name": "Matt Gill", "Height(inches)": 40, "Soccer Experience": false, "Guardian's Name(s)": "Charles and Sylvia Gill"]
    
let playerSix: [String: Any] = ["name": "Kimmy Stein", "Height(inches)": 41, "Soccer Experience": false, "Guardian's Name(s)": "Bill and Hillary Stein"]
   
let playerSeven: [String: Any] = ["name": "Sammy Adams", "Height(inches)": 45, "Soccer Experience": false, "Guardian's Name(s)": "Jeff Adams"]
    
let playerEight: [String: Any] = ["name": "Karl Saygan", "Height(inches)": 42, "Soccer Experience": true, "Guardian's Name(s)": "Heather Bledsoe"]
    
let playerNine: [String: Any] = ["name": "Suzan Greenburg", "Height(inches)": 44, "Soccer Experience": true, "Guardian's Name(s)": "Henrietta Dumas"]
    
let playerTen: [String: Any] = ["name": "Sal Dali", "Height(inches)": 41, "Soccer Experience": false, "Guardian's Name(s)": "Jim and Gali Dali"]
    
let playerEleven: [String: Any] = ["name": "Joe Kavalier", "Height(inches)": 39, "Soccer Experience": false, "Guardian's Name(s)": "Sam and Elaine Kavalier"]
    
let playerTwelve: [String: Any] = ["name": "Ben Finkelstein", "Height(inches)": 44, "Soccer Experience": false, "Guardian's Name(s)": "Aaron and Jill Finkelstein"]
    
let playerThirteen: [String: Any] = ["name": "Diego Soto", "Height(inches)": 41, "Soccer Experience": true, "Guardian's Name(s)": "Robin and Sarika Soto"]
    
let playerFourteen: [String: Any] = ["name": "Chloe Alaksa", "Height(inches)": 47, "Soccer Experience": false, "Guardian's Name(s)": "David and Jamie Alaska"]
    
let playerFifteen: [String: Any] = ["name": "Arnold Willis", "Height(inches)": 43, "Soccer Experience": false, "Guardian's Name(s)": "Claire Willis"]
    
let playerSixteen: [String: Any] = ["name": "Phillip Helm", "Height(inches)": 44, "Soccer Experience": true, "Guardian's Name(s)": "Thomas Helm and Eva Jones"]
    
let playerSeventeen: [String: Any] = ["name": "Les Clay", "Height(inches)": 42, "Soccer Experience": true, "Guardian's Name(s)": "Wynonna Brown"]
    
let playerEighteen: [String: Any] = ["name": "Herschel Krustofski", "Height(inches)": 45, "Soccer Experience": true, "Guardian's Name(s)": "Hyman and Rachel Krustofski"]

// Now I will combine all players under a single array called "players".

var players = [

    playerOne,
    playerTwo,
    playerThree,
    playerFour,
    playerFive,
    playerSix,
    playerSeven,
    playerEight,
    playerNine,
    playerTen,
    playerEleven,
    playerTwelve,
    playerThirteen,
    playerFourteen,
    playerFifteen,
    playerSixteen,
    playerSeventeen,
    playerEighteen
    
]

                                                    // PART 2



// These are empty arrays to be used later in order to append players who are experienced and non-experienced

var experiencedPlayers: [[String: Any]] = []
var nonExperieencedPlayers: [[String: Any]] = []

// These three arrays will be the teams that each player is split up into.

var teamDragons: [[String: Any]] = []

var teamSharks: [[String: Any]] = []

var teamRaptors: [[String: Any]] = []

// Now I will sort experienced players and non experienced players

for player in players {
    
    let experience: Bool = player["Soccer Experience"] as! Bool
    if experience == true {
        experiencedPlayers.append(player)
    } else {
        nonExperieencedPlayers.append(player)
    }
    
}


// Now I'll sort all experienced players into their respective teams

for players in experiencedPlayers {
    
    if teamDragons.count < 3 {
        
        teamDragons.append(players)
    } else if teamSharks.count < 3 {
        teamSharks.append(players)
    } else {
        teamRaptors.append(players)
    }
}



// Now I'll sort all non-experienced players into their respective teams 


for players in nonExperieencedPlayers {
    
    if teamDragons.count < 6 {
        
        teamDragons.append(players)
    } else if teamSharks.count < 6 {
        teamSharks.append(players)
    } else {
        teamRaptors.append(players)
    }
}

// Now I'll group Congratulation letters for each individual player into the letters array 

var letters: [String] = []

for players in teamDragons {
    var guardiansOne = players["Guardian's Name(s)"]
    var namesOne = players["name"]

    
    
    letters.append("Dear \(guardiansOne!), your child \(namesOne!) has made The Dragons. Congratulations! The practice date is as follows: March 17th @ 1 PM.")
}

for players in teamSharks {
    var guardiansTwo = players["Guardian's Name(s)"]
    var namesTwo = players["name"]
    
    
    letters.append("Dear \(guardiansTwo!), your child \(namesTwo!) has made The Sharks. Congratulations! The practice date is as follows: March 17th @ 3 PM.")

}

for players in teamRaptors {
    var guardiansThree = players["Guardian's Name(s)"]
    var namesThree = players["name"]
    
    
    
    letters.append("Dear \(guardiansThree!), your child \(namesThree!) has made The Raptors. Congratulations! The practice date is as follows: March 18th @ 1 PM.")

}

