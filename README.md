NEO4j Graph Database  of EPL matches

The database has the following nodes and properties:
•	Teams	
  o	name
•	Matches	
  o	matchName
  o	dateTime
  o	full_time_home_team_goals
  o	full_time_away_team_goals
  o	full_time_result
  o	half_time_home_team_goals
  o	half_time_away_team_goals
  o	half_time_result
  o	home_team_shots
  o	away_team_shots
  o	home_team_shots_on_target
  o	away_team_shots_on_target
  o	home_team_corners
  o	away_team_corners
  o	home_team_fouls_committed
  o	away_team_fouls_committed 
  o	home_team_yellow_cards
  o	away_team_yellow_cards
  o	home_team_red_cards
  o	away_team_red_cards
•	Seasons	
  o	season 
•	Referees 	
  o	Referee


The relationships are:
Home teams and away teams will be part of a match ( PLAYED_HOME, PLAYED_AWAY), a referee will be part of a match (REFEREED) and a match will be part of a season(PART_OF).



