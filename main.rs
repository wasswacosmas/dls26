// DLS26 Fan Website - Rust Backend
// High-performance, memory-safe backend

struct Player {
    id: u32,
    name: String,
    position: String,
    rating: u8,
}

struct Match {
    id: u32,
    team1: String,
    team2: String,
    score: String,
}

impl Player {
    fn new(id: u32, name: String, position: String, rating: u8) -> Self {
        Player {
            id,
            name,
            position,
            rating,
        }
    }
    
    fn display_info(&self) -> String {
        format!("{} - {} (Rating: {})", self.name, self.position, self.rating)
    }
}

fn main() {
    let player1 = Player::new(1, "Player 1".to_string(), "Forward".to_string(), 95);
    println!("Player Info: {}", player1.display_info());
    
    let matches = vec![
        Match {
            id: 1,
            team1: "Team A".to_string(),
            team2: "Team B".to_string(),
            score: "3-2".to_string(),
        },
    ];
    
    println!("Total matches: {}", matches.len());
}
