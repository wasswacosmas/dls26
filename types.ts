// DLS26 Fan Website - TypeScript type definitions
// Type-safe configuration and interfaces

interface Player {
    id: number;
    name: string;
    position: string;
    rating: number;
    team: string;
}

interface Match {
    id: number;
    team1: string;
    team2: string;
    score: string;
    date: string;
}

interface TeamRanking {
    rank: number;
    teamName: string;
    points: number;
    matchesPlayed: number;
}

class DLS26Application {
    private players: Player[] = [];
    private matches: Match[] = [];
    private rankings: TeamRanking[] = [];
    
    constructor() {
        console.log('DLS26 Application Initialized');
    }
    
    addPlayer(player: Player): void {
        this.players.push(player);
    }
    
    getPlayers(): Player[] {
        return this.players;
    }
    
    addMatch(match: Match): void {
        this.matches.push(match);
    }
}

export { Player, Match, TeamRanking, DLS26Application };
