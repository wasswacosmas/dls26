// DLS26 Fan Website - C Systems Programming
// Low-level performance-critical code

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    int id;
    char name[50];
    char position[20];
    int rating;
} Player;

typedef struct {
    int id;
    char team1[50];
    char team2[50];
    char score[10];
} Match;

void display_player(const Player* player) {
    printf("%s - %s (Rating: %d)\n", player->name, player->position, player->rating);
}

Player* create_player(int id, const char* name, const char* position, int rating) {
    Player* player = (Player*)malloc(sizeof(Player));
    player->id = id;
    strcpy(player->name, name);
    strcpy(player->position, position);
    player->rating = rating;
    return player;
}

int main() {
    Player* p1 = create_player(1, "Player 1", "Forward", 95);
    Player* p2 = create_player(2, "Player 2", "Midfielder", 88);
    
    display_player(p1);
    display_player(p2);
    
    free(p1);
    free(p2);
    
    return 0;
}
