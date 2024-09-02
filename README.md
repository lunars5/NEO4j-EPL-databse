NEO4j Graph Database  of EPL matches

The database has the following nodes and properties:

•	Teams	

  name
	
•	Matches	

  matchName
	
  dateTime
	
  full_time_home_team_goals
	
  full_time_away_team_goals
	
  full_time_result
	
  half_time_home_team_goals
 
  half_time_away_team_goals
	
  half_time_result
	
  home_team_shots
	
  away_team_shots
	
  home_team_shots_on_target
	
  away_team_shots_on_target
	
  home_team_corners
	
  away_team_corners
	
  home_team_fouls_committed
	
  away_team_fouls_committed 
	
  home_team_yellow_cards
	
  away_team_yellow_cards
	
  home_team_red_cards
	
  away_team_red_cards
	
•	Seasons	

  season 
	
•	Referees 	
  
 Referee


The relationships are:
Home teams and away teams will be part of a match ( PLAYED_HOME, PLAYED_AWAY), a referee will be part of a match (REFEREED) and a match will be part of a season(PART_OF).



