// DLS26 Fan Website - C++ Backend
// High-performance systems programming

#include <iostream>
#include <vector>
#include <string>

struct Player {
    int id;
    std::string name;
    std::string position;
    int rating;
    
    Player(int id, std::string name, std::string position, int rating)
        : id(id), name(name), position(position), rating(rating) {}
    
    void displayInfo() const {
        std::cout << name << " - " << position << " (Rating: " << rating << ")" << std::endl;
    }
};

struct Match {
    int id;
    std::string team1;
    std::string team2;
    std::string score;
    
    Match(int id, std::string team1, std::string team2, std::string score)
        : id(id), team1(team1), team2(team2), score(score) {}
};

class DLS26Manager {
private:
    std::vector<Player> players;
    std::vector<Match> matches;
    
public:
    void addPlayer(const Player& player) {
        players.push_back(player);
    }
    
    void displayAllPlayers() const {
        for (const auto& player : players) {
            player.displayInfo();
        }
    }
};

int main() {
    DLS26Manager manager;
    
    manager.addPlayer(Player(1, "Player 1", "Forward", 95));
    manager.addPlayer(Player(2, "Player 2", "Midfielder", 88));
    
    manager.displayAllPlayers();
    
    return 0;
}
