<?php
/**
 * DLS26 Fan Website - PHP Backend API
 * RESTful API endpoints for the fan website
 */

class DLS26API {
    private $db;
    
    public function __construct() {
        $this->connectDatabase();
    }
    
    private function connectDatabase() {
        // Database connection logic
        echo "Database connected";
    }
    
    public function getPlayers() {
        $players = [
            ['id' => 1, 'name' => 'Player 1', 'position' => 'Forward', 'rating' => 95],
            ['id' => 2, 'name' => 'Player 2', 'position' => 'Midfielder', 'rating' => 88]
        ];
        return json_encode($players);
    }
    
    public function getMatches() {
        $matches = [
            ['id' => 1, 'team1' => 'Team A', 'team2' => 'Team B', 'score' => '3-2'],
            ['id' => 2, 'team1' => 'Team C', 'team2' => 'Team D', 'score' => '1-1']
        ];
        return json_encode($matches);
    }
    
    public function handleRequest() {
        header('Content-Type: application/json');
        $request = $_SERVER['REQUEST_METHOD'];
        
        if ($request === 'GET') {
            echo $this->getPlayers();
        }
    }
}

// Initialize API
$api = new DLS26API();
$api->handleRequest();
?>
