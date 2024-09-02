
LOAD CSV WITH HEADERS FROM "file:///EPL_matches.csv" AS row
MERGE (h:Teams{name:row.HomeTeam})
MERGE (a:Teams{name:row.AwayTeam})
MERGE (s:Seasons{season:row.Season })
MERGE (m:Matches{matchName:"Match", dateTime:dateTime(row.DateTime), full_time_home_team_goals:toInteger(row.FTHG), full_time_away_team_goals:toInteger(row.FTAG), full_time_result:row.FTR, half_time_home_team_goals:toInteger(row.HTHG), half_time_away_team_goals:toInteger(row.HTAG), half_time_result:row.HTR, home_team_shots:toInteger(row.HS), away_team_shots:toInteger(row.AS), home_team_shots_on_target:toInteger(row.HST), away_team_shots_on_target:toInteger(row.AST), home_team_corners:toInteger(row.HC), away_team_corners:toInteger(row.AC), home_team_fouls_committed:toInteger(row.HF), away_team_fouls_committed:toInteger(row.AF), home_team_yellow_cards:toInteger(row.HY), away_team_yellow_cards:toInteger(row.AY), home_team_red_cards:toInteger(row.HR), away_team_red_cards:toInteger(row.AR)})
MERGE (r:Referees{referee:row.Referee})
CREATE (h)-[:PLAYED_HOME]->(m)<-[:PLAYED_AWAY]-(a)
CREATE (r)-[:REFEREED]->(m)
CREATE (m)-[:PART_OF]->(s)
