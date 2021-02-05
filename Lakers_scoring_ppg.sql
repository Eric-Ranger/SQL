--Player name, team name, season, ppg for the LA Lakers 2020 season roster

Select players.player_id, player_name, nickname As team, season, Avg(pts) As ppg
From games_details, games, players, teams
Where games_details.player_id = players.player_id
And games_details.game_id = games.game_id
And games_details.team_id = teams.team_id
And season = 2020
And game_status = 'Final'
And abbreviation = 'LAL'
Group By players.player_id, player_name, nickname, season
Order By Avg(pts) Desc
