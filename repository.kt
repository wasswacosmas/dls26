// DLS26 Fan Website - Kotlin Backend
// Modern JVM language for Android and backend

data class Player(
    val id: Int,
    val name: String,
    val position: String,
    val rating: Int
)

data class Match(
    val id: Int,
    val team1: String,
    val team2: String,
    val score: String
)

class DLS26Repository {
    private val players = mutableListOf<Player>()
    private val matches = mutableListOf<Match>()
    
    fun addPlayer(player: Player) {
        players.add(player)
    }
    
    fun getPlayers(): List<Player> = players.toList()
    
    fun addMatch(match: Match) {
        matches.add(match)
    }
    
    fun getMatches(): List<Match> = matches.toList()
}

fun main() {
    val repo = DLS26Repository()
    repo.addPlayer(Player(1, "Player 1", "Forward", 95))
    repo.addPlayer(Player(2, "Player 2", "Midfielder", 88))
    
    repo.getPlayers().forEach {
        println("${it.name} - ${it.position} (${it.rating})")
    }
}
