// DLS26 Fan Website - Go Backend Service
// High-performance backend service

package main

import (
	"fmt"
	"log"
	"net/http"
)

type Player struct {
	ID       int    `json:"id"`
	Name     string `json:"name"`
	Position string `json:"position"`
	Rating   int    `json:"rating"`
}

type Match struct {
	ID    int    `json:"id"`
	Team1 string `json:"team1"`
	Team2 string `json:"team2"`
	Score string `json:"score"`
}

func getPlayers(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	players := []Player{
		{ID: 1, Name: "Player 1", Position: "Forward", Rating: 95},
		{ID: 2, Name: "Player 2", Position: "Midfielder", Rating: 88},
	}
	fmt.Fprint(w, players)
}

func getMatches(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	fmt.Fprint(w, "Matches data")
}

func main() {
	http.HandleFunc("/api/players", getPlayers)
	http.HandleFunc("/api/matches", getMatches)
	
	log.Println("DLS26 Server starting on :8000")
	log.Fatal(http.ListenAndServe(":8000", nil))
}
