// DLS26 Fan Website - C# Unity Game
// Cross-platform game development

using UnityEngine;
using System.Collections.Generic;

public class Player
{
    public int id;
    public string name;
    public string position;
    public int rating;
    
    public Player(int id, string name, string position, int rating)
    {
        this.id = id;
        this.name = name;
        this.position = position;
        this.rating = rating;
    }
}

public class Match
{
    public int id;
    public string team1;
    public string team2;
    public string score;
    
    public Match(int id, string team1, string team2, string score)
    {
        this.id = id;
        this.team1 = team1;
        this.team2 = team2;
        this.score = score;
    }
}

public class DLS26GameManager : MonoBehaviour
{
    private List<Player> players = new List<Player>();
    private List<Match> matches = new List<Match>();
    
    void Start()
    {
        LoadGameData();
    }
    
    void LoadGameData()
    {
        players.Add(new Player(1, "Player 1", "Forward", 95));
        players.Add(new Player(2, "Player 2", "Midfielder", 88));
        
        Debug.Log("Game data loaded: " + players.Count + " players");
    }
}
