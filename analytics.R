# DLS26 Fan Website - R Analytics
# Data analysis and statistics

library(tidyverse)
library(ggplot2)

# Player statistics data frame
players_df <- data.frame(
  id = c(1, 2, 3, 4, 5),
  name = c("Player1", "Player2", "Player3", "Player4", "Player5"),
  position = c("Forward", "Midfielder", "Defender", "Goalkeeper", "Forward"),
  rating = c(95, 88, 85, 82, 90),
  matches_played = c(25, 22, 30, 28, 20)
)

# Match results data frame
matches_df <- data.frame(
  match_id = c(1, 2, 3, 4, 5),
  team1 = c("Team A", "Team B", "Team C", "Team A", "Team D"),
  team2 = c("Team B", "Team C", "Team D", "Team D", "Team A"),
  team1_score = c(3, 1, 2, 4, 2),
  team2_score = c(2, 1, 3, 1, 2)
)

# Calculate average rating by position
avg_rating_by_position <- players_df %>%
  group_by(position) %>%
  summarise(avg_rating = mean(rating), .groups = 'drop')

print(avg_rating_by_position)

# Visualization
ggplot(players_df, aes(x = position, y = rating)) +
  geom_boxplot() +
  labs(title = "Player Ratings by Position",
       x = "Position",
       y = "Rating")
