SELECT * FROM Match_Result
SELECT * FROM Player_Stat
SELECT * FROM Point_Table

--Total Home Goal for Liverpool
SELECT sum(HomeGoal) as Total_HomeGoal FROM Match_Result
WHERE HomeTeam = 'Liverpool'

--Total match played in 2021
SELECT count(id) as total_match_2021 FROM Match_Result ms
WHERE YEAR(ms.Date) = 2021

--Total match played in 2022
SELECT count(id) as total_match_2022 FROM Match_Result ms
WHERE YEAR(ms.Date) = 2022

--Total players scored
SELECT count(Player) total_player_scored FROM Player_Stat
WHERE Goals > 0

--Total Penalties
SELECT sum(Penalties) as Total_Penalties FROM Player_Stat

--Penalties per Match
SELECT sum(Penalties) as Total_Penalties FROM Player_Stat 

--Total Yellow Cards
SELECT sum(YellowCards) as Total_YellowCards FROM Player_Stat

-- Top Scorer 
SELECT Player,Team, Goals, Position
FROM Player_Stat
WHERE Goals = (SELECT Max(Goals)
					FROM Player_Stat)

--Top 10 Appearance Player
SELECT Top 10 *
FROM Player_Stat
ORDER BY Apearances DESC		