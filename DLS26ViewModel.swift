// DLS26 Fan Website - Swift iOS App
// Apple iOS development

import Foundation

struct Player: Codable {
    let id: Int
    let name: String
    let position: String
    let rating: Int
}

struct Match: Codable {
    let id: Int
    let team1: String
    let team2: String
    let score: String
    let date: String
}

class DLS26ViewModel: ObservableObject {
    @Published var players: [Player] = []
    @Published var matches: [Match] = []
    
    func loadPlayers() {
        let samplePlayers = [
            Player(id: 1, name: "Player 1", position: "Forward", rating: 95),
            Player(id: 2, name: "Player 2", position: "Midfielder", rating: 88)
        ]
        self.players = samplePlayers
    }
    
    func loadMatches() {
        let sampleMatches = [
            Match(id: 1, team1: "Team A", team2: "Team B", score: "3-2", date: "2026-06-15"),
            Match(id: 2, team1: "Team C", team2: "Team D", score: "1-1", date: "2026-06-14")
        ]
        self.matches = sampleMatches
    }
}
