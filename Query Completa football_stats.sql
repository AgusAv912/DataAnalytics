select * from football_stats
order by id

use Project_football

/* All statistics are based on 90' matches */

/* Best Forwards of the big 5*/

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
yellow_card,
red_card,
fouls_drawn
penalty_won
from football_stats
where position like '%FW%' and matches_played > 25
order by goals desc;

/* Argentinian Players */

select * from football_stats
where nation = 'ARG'

/* Argentinian Defenders */

select * from football_stats
where nation = 'ARG' and position like '%DF%'

/* Argentina's defenders stats */

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
tackles_won,
dribbler_tackled_percentage,
times_past_by_dribble_by_rival,
interceptions,
clearances,
yellow_card,
red_card,
fouls_committed,
ball_recovery
from football_stats
where nation = 'ARG' and position like '%DF%'

/* Argentina's defenders defensive stats*/

select player,
nation,
position,
matches_played,
tackles_won,
dribbler_tackled_percentage,
times_past_by_dribble_by_rival,
interceptions,
clearances,
yellow_card,
red_card,
fouls_committed,
ball_recovery
from football_stats
where nation = 'ARG' and position like '%DF%'
order by ball_recovery desc;

/* Argentina's defenders with the ball stats*/

select player,
nation,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed
from football_stats
where nation = 'ARG' and position like '%DF%'
order by pass_completion_percentage desc;

/* Argentinian Midfielders */

select * from football_stats
where nation = 'ARG' and position like '%MF%'

/* Argentina's midfielders stats */

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
tackles_won,
dribbler_tackled_percentage,
times_past_by_dribble_by_rival,
interceptions,
clearances,
yellow_card,
red_card,
fouls_committed,
fouls_drawn,
ball_recovery
from football_stats
where nation = 'ARG' and position like '%MF%'

/* Argentina's midfielders with the ball stats*/

select player,
nation,
position,
matches_played,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
assists,
crosses
from football_stats
where nation = 'ARG' and position like '%MF%'
order by pass_completion_percentage desc;

/* Argentina's midfielders offensive stats*/

select player,
nation,
position,
matches_played,
goals,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
fouls_drawn
from football_stats
where nation = 'ARG' and position like '%MF%'
order by goals desc;

/* Argentinian Attackers */

select * from football_stats
where nation = 'ARG' and position like '%FW%'

/* Argentina's attackers stats*/

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
yellow_card,
red_card,
fouls_drawn
penalty_won
from football_stats
where nation = 'ARG' and position like '%FW%'
order by goals desc;

/* Defenders selection */

select player,
nation,
age,
position,
matches_played,
pass_completion_percentage,
tackles_won,
dribbler_tackled_percentage,
interceptions,
clearances,
yellow_card,
red_card,
fouls_committed,
ball_recovery
from football_stats
where nation = 'ARG' and position like '%DF%' and age between 23 and 28 and pass_completion_percentage >= 75 and (dribbler_tackled_percentage >= 50 or ball_recovery >= 8.75);

select player, team
from football_stats
where nation = 'ARG' and position like '%DF%' and age between 23 and 28 and pass_completion_percentage >= 75 and (dribbler_tackled_percentage >= 50 or ball_recovery >= 8.75)
order by ball_recovery;

/* Midfielders Selection */

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
dribbler_tackled_percentage,
interceptions,
yellow_card,
red_card,
fouls_committed
from football_stats
where nation = 'ARG' and position like '%MF%' and pass_completion_percentage >= 75 and dribble_succesful_percentage >= 45

select player, team
from football_stats
where nation = 'ARG' and position like '%MF%' and pass_completion_percentage >= 75 and dribble_succesful_percentage >= 45
order by pass_completion_percentage desc

/* Attackers Selection */

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
yellow_card,
red_card,
fouls_drawn
penalty_won
from football_stats
where nation = 'ARG' and position like '%FW%' and shot_creation_action >= 2
order by goals desc;

select player,
team
from football_stats
where nation = 'ARG' and position like '%FW%' and shot_creation_action >= 2
order by goals desc;

/* Best Argentina selection */

select player, team from football_stats
where (position = 'GK' and nation = 'ARG' and matches_played >= 35 and pass_completion_percentage >= 70) or 
(position like '%DF%' and nation = 'ARG' and matches_played >= 18 and pass_completion_percentage >= 75 and times_past_by_dribble_by_rival <= 0.90 and tackles_won >= 0.9) or
(position like '%MF%' and nation = 'ARG' and matches_played >= 23 and pass_completion_percentage >= 75 and goal_creating_action >= 0.2 and interceptions >= 1) or
(position like '%FW%' and nation = 'ARG' and matches_played >= 23 and pass_completion_percentage >= 75 and goal_creating_action >= 0.2 and dribble_succesful_percentage >= 0.60 and shots_on_target >= 1)
order by position

/* Brasil Players */

select * from football_stats
where nation = 'BRA'


/* Brasil Defenders */

select * from football_stats
where nation = 'BRA' and position like '%DF%'

/* Brasil defenders stats */

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
tackles_won,
dribbler_tackled_percentage,
times_past_by_dribble_by_rival,
interceptions,
clearances,
yellow_card,
red_card,
fouls_committed,
ball_recovery
from football_stats
where nation = 'BRA' and position like '%DF%'

/* Brasil defenders defensive stats*/

select player,
nation,
position,
matches_played,
tackles_won,
dribbler_tackled_percentage,
times_past_by_dribble_by_rival,
interceptions,
clearances,
yellow_card,
red_card,
fouls_committed,
ball_recovery
from football_stats
where nation = 'BRA' and position like '%DF%'
order by ball_recovery desc;

/* Brasil defenders with the ball stats*/

select player,
nation,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed
from football_stats
where nation = 'BRA' and position like '%DF%'
order by pass_completion_percentage desc;

/* Brasil Midfielders */

select * from football_stats
where nation = 'BRA' and position like '%MF%'

/* Brasil midfielders stats */

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
tackles_won,
dribbler_tackled_percentage,
times_past_by_dribble_by_rival,
interceptions,
clearances,
yellow_card,
red_card,
fouls_committed,
fouls_drawn,
ball_recovery
from football_stats
where nation = 'BRA' and position like '%MF%'

/* Brasil midfielders with the ball stats*/

select player,
nation,
position,
matches_played,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
assists,
crosses
from football_stats
where nation = 'BRA' and position like '%MF%'
order by pass_completion_percentage desc;

/* Brasil midfielders offensive stats*/

select player,
nation,
position,
matches_played,
goals,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
fouls_drawn
from football_stats
where nation = 'BRA' and position like '%MF%'
order by goals desc;

/* Brasil Attackers */

select * from football_stats
where nation = 'BRA' and position like '%FW%'

/* Brasil attackers stats*/

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
yellow_card,
red_card,
fouls_drawn
penalty_won
from football_stats
where nation = 'BRA' and position like '%FW%'
order by goals desc;

/* Defenders selection */

select player,
nation,
age,
position,
matches_played,
pass_completion_percentage,
tackles_won,
dribbler_tackled_percentage,
interceptions,
clearances,
yellow_card,
red_card,
fouls_committed,
ball_recovery
from football_stats
where nation = 'BRA' and position like '%DF%' and age between 23 and 28 and pass_completion_percentage >= 75 and (dribbler_tackled_percentage >= 50 or ball_recovery >= 8.75);

select player, team
from football_stats
where nation = 'BRA' and position like '%DF%' and age between 23 and 28 and pass_completion_percentage >= 75 and (dribbler_tackled_percentage >= 50 or ball_recovery >= 8.75)
order by ball_recovery;

/* Midfielders Selection */

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
dribbler_tackled_percentage,
interceptions,
yellow_card,
red_card,
fouls_committed
from football_stats
where nation = 'BRA' and position like '%MF%' and pass_completion_percentage >= 75 and dribble_succesful_percentage >= 45

select player, team
from football_stats
where nation = 'BRA' and position like '%MF%' and pass_completion_percentage >= 75 and dribble_succesful_percentage >= 45
order by pass_completion_percentage desc

/* Attackers Selection */

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
yellow_card,
red_card,
fouls_drawn
penalty_won
from football_stats
where nation = 'BRA' and position like '%FW%' and shot_creation_action >= 2
order by goals desc;

select player,
team
from football_stats
where nation = 'BRA' and position like '%FW%' and shot_creation_action >= 2
order by goals desc;

/* Best Brasil selection */

select * from football_stats
where (position = 'GK' and nation = 'BRA' and matches_played >= 35 and pass_completion_percentage >= 70) or 
(position like '%DF%' and nation = 'BRA' and matches_played >= 18 and pass_completion_percentage >= 75 and times_past_by_dribble_by_rival <= 0.90 and tackles_won >= 0.9) or
(position like '%MF%' and nation = 'BRA' and matches_played >= 23 and pass_completion_percentage >= 75 and goal_creating_action >= 0.2 and interceptions >= 1) or
(position like '%FW%' and nation = 'BRA' and matches_played >= 23 and pass_completion_percentage >= 75 and goal_creating_action >= 0.2 and dribble_succesful_percentage >= 0.60 and shots_on_target >= 1)
order by position

/* France Players */

select * from football_stats
where nation = 'BRA'


/* France Defenders */

select * from football_stats
where nation = 'FRA' and position like '%DF%'

/* France defenders stats */

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
tackles_won,
dribbler_tackled_percentage,
times_past_by_dribble_by_rival,
interceptions,
clearances,
yellow_card,
red_card,
fouls_committed,
ball_recovery
from football_stats
where nation = 'FRA' and position like '%DF%'

/* France defenders defensive stats*/

select player,
nation,
position,
matches_played,
tackles_won,
dribbler_tackled_percentage,
times_past_by_dribble_by_rival,
interceptions,
clearances,
yellow_card,
red_card,
fouls_committed,
ball_recovery
from football_stats
where nation = 'FRA' and position like '%DF%'
order by ball_recovery desc;

/* France defenders with the ball stats*/

select player,
nation,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed
from football_stats
where nation = 'FRA' and position like '%DF%'
order by pass_completion_percentage desc;

/* France Midfielders */

select * from football_stats
where nation = 'FRA' and position like '%MF%'

/* France midfielders stats */

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
tackles_won,
dribbler_tackled_percentage,
times_past_by_dribble_by_rival,
interceptions,
clearances,
yellow_card,
red_card,
fouls_committed,
fouls_drawn,
ball_recovery
from football_stats
where nation = 'FRA' and position like '%MF%'

/* France midfielders with the ball stats*/

select player,
nation,
position,
matches_played,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
assists,
crosses
from football_stats
where nation = 'FRA' and position like '%MF%'
order by pass_completion_percentage desc;

/* France midfielders offensive stats*/

select player,
nation,
position,
matches_played,
goals,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
fouls_drawn
from football_stats
where nation = 'FRA' and position like '%MF%'
order by goals desc;

/* France Attackers */

select * from football_stats
where nation = 'FRA' and position like '%FW%'

/* France attackers stats*/

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
yellow_card,
red_card,
fouls_drawn
penalty_won
from football_stats
where nation = 'FRA' and position like '%FW%'
order by goals desc;

/* Defenders selection */

select player,
nation,
age,
position,
matches_played,
pass_completion_percentage,
tackles_won,
dribbler_tackled_percentage,
interceptions,
clearances,
yellow_card,
red_card,
fouls_committed,
ball_recovery
from football_stats
where nation = 'FRA' and position like '%DF%' and age between 23 and 28 and pass_completion_percentage >= 75 and (dribbler_tackled_percentage >= 50 or ball_recovery >= 8.75);

select player, team
from football_stats
where nation = 'FRA' and position like '%DF%' and age between 23 and 28 and pass_completion_percentage >= 75 and (dribbler_tackled_percentage >= 50 or ball_recovery >= 8.75)
order by ball_recovery;

/* Midfielders Selection */

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
dribbler_tackled_percentage,
interceptions,
yellow_card,
red_card,
fouls_committed
from football_stats
where nation = 'FRA' and position like '%MF%' and pass_completion_percentage >= 75 and dribble_succesful_percentage >= 45

select player, team
from football_stats
where nation = 'FRA' and position like '%MF%' and pass_completion_percentage >= 75 and dribble_succesful_percentage >= 45
order by pass_completion_percentage desc

/* Attackers Selection */

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
yellow_card,
red_card,
fouls_drawn
penalty_won
from football_stats
where nation = 'FRA' and position like '%FW%' and shot_creation_action >= 2
order by goals desc;

select player,
team
from football_stats
where nation = 'FRA' and position like '%FW%' and shot_creation_action >= 2
order by goals desc;

/* Croatia Players */

select * from football_stats
where nation = 'CRO'


/* Croatia Defenders */

select * from football_stats
where nation = 'CRO' and position like '%DF%'

/* Croatia defenders stats */

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
tackles_won,
dribbler_tackled_percentage,
times_past_by_dribble_by_rival,
interceptions,
clearances,
yellow_card,
red_card,
fouls_committed,
ball_recovery
from football_stats
where nation = 'CRO' and position like '%DF%'

/* Croatia defenders defensive stats*/

select player,
nation,
position,
matches_played,
tackles_won,
dribbler_tackled_percentage,
times_past_by_dribble_by_rival,
interceptions,
clearances,
yellow_card,
red_card,
fouls_committed,
ball_recovery
from football_stats
where nation = 'CRO' and position like '%DF%'
order by ball_recovery desc;

/* Croatia defenders with the ball stats*/

select player,
nation,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed
from football_stats
where nation = 'CRO' and position like '%DF%'
order by pass_completion_percentage desc;

/* Croatia Midfielders */

select * from football_stats
where nation = 'CRO' and position like '%MF%'

/* Croatia midfielders stats */

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
tackles_won,
dribbler_tackled_percentage,
times_past_by_dribble_by_rival,
interceptions,
clearances,
yellow_card,
red_card,
fouls_committed,
fouls_drawn,
ball_recovery
from football_stats
where nation = 'CRO' and position like '%MF%'

/* Croatia midfielders with the ball stats*/

select player,
nation,
position,
matches_played,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
assists,
crosses
from football_stats
where nation = 'CRO' and position like '%MF%'
order by pass_completion_percentage desc;

/* Croatia midfielders offensive stats*/

select player,
nation,
position,
matches_played,
goals,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
fouls_drawn
from football_stats
where nation = 'CRO' and position like '%MF%'
order by goals desc;

/* Croatia Attackers */

select * from football_stats
where nation = 'CRO' and position like '%FW%'

/* Croatia attackers stats*/

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
yellow_card,
red_card,
fouls_drawn
penalty_won
from football_stats
where nation = 'CRO' and position like '%FW%'
order by goals desc;

/* Defenders selection */

select player,
nation,
age,
position,
matches_played,
pass_completion_percentage,
tackles_won,
dribbler_tackled_percentage,
interceptions,
clearances,
yellow_card,
red_card,
fouls_committed,
ball_recovery
from football_stats
where nation = 'CRO' and position like '%DF%' and age between 23 and 28 and pass_completion_percentage >= 75 and (dribbler_tackled_percentage >= 50 or ball_recovery >= 8.75);

select player, team
from football_stats
where nation = 'CRO' and position like '%DF%' and age between 23 and 28 and pass_completion_percentage >= 75 and (dribbler_tackled_percentage >= 50 or ball_recovery >= 8.75)
order by ball_recovery;

/* Midfielders Selection */

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
dribbler_tackled_percentage,
interceptions,
yellow_card,
red_card,
fouls_committed
from football_stats
where nation = 'CRO' and position like '%MF%' and pass_completion_percentage >= 75 and dribble_succesful_percentage >= 45

select player, team
from football_stats
where nation = 'CRO' and position like '%MF%' and pass_completion_percentage >= 75 and dribble_succesful_percentage >= 45
order by pass_completion_percentage desc

/* Attackers Selection */

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
yellow_card,
red_card,
fouls_drawn
penalty_won
from football_stats
where nation = 'CRO' and position like '%FW%' and shot_creation_action >= 2
order by goals desc;

select player,
team
from football_stats
where nation = 'CRO' and position like '%FW%' and shot_creation_action >= 2
order by goals desc;

/* Morocco Players */

select * from football_stats
where nation = 'MAR'


/* Morocco Defenders */

select * from football_stats
where nation = 'MAR' and position like '%DF%'

/* Morocco defenders stats */

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
tackles_won,
dribbler_tackled_percentage,
times_past_by_dribble_by_rival,
interceptions,
clearances,
yellow_card,
red_card,
fouls_committed,
ball_recovery
from football_stats
where nation = 'MAR' and position like '%DF%'

/* Morocco defenders defensive stats*/

select player,
nation,
position,
matches_played,
tackles_won,
dribbler_tackled_percentage,
times_past_by_dribble_by_rival,
interceptions,
clearances,
yellow_card,
red_card,
fouls_committed,
ball_recovery
from football_stats
where nation = 'MAR' and position like '%DF%'
order by ball_recovery desc;

/* Morocco defenders with the ball stats*/

select player,
nation,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed
from football_stats
where nation = 'MAR' and position like '%DF%'
order by pass_completion_percentage desc;

/* Morocco Midfielders */

select * from football_stats
where nation = 'MAR' and position like '%MF%'

/* Morocco midfielders stats */

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
tackles_won,
dribbler_tackled_percentage,
times_past_by_dribble_by_rival,
interceptions,
clearances,
yellow_card,
red_card,
fouls_committed,
fouls_drawn,
ball_recovery
from football_stats
where nation = 'MAR' and position like '%MF%'

/* Morocco midfielders with the ball stats*/

select player,
nation,
position,
matches_played,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
assists,
crosses
from football_stats
where nation = 'MAR' and position like '%MF%'
order by pass_completion_percentage desc;

/* Morocco midfielders offensive stats*/

select player,
nation,
position,
matches_played,
goals,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
fouls_drawn
from football_stats
where nation = 'MAR' and position like '%MF%'
order by goals desc;

/* Morocco Attackers */

select * from football_stats
where nation = 'CRO' and position like '%FW%'

/* Morocco attackers stats*/

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
yellow_card,
red_card,
fouls_drawn
penalty_won
from football_stats
where nation = 'MAR' and position like '%FW%'
order by goals desc;

/* Defenders selection */

select player,
nation,
age,
position,
matches_played,
pass_completion_percentage,
tackles_won,
dribbler_tackled_percentage,
interceptions,
clearances,
yellow_card,
red_card,
fouls_committed,
ball_recovery
from football_stats
where nation = 'MAR' and position like '%DF%' and age between 23 and 28 and pass_completion_percentage >= 75 and (dribbler_tackled_percentage >= 50 or ball_recovery >= 8.75);

select player, team
from football_stats
where nation = 'MAR' and position like '%DF%' and age between 23 and 28 and pass_completion_percentage >= 75 and (dribbler_tackled_percentage >= 50 or ball_recovery >= 8.75)
order by ball_recovery;

/* Midfielders Selection */

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
dribbler_tackled_percentage,
interceptions,
yellow_card,
red_card,
fouls_committed
from football_stats
where nation = 'MAR' and position like '%MF%' and pass_completion_percentage >= 75 and dribble_succesful_percentage >= 45

select player, team
from football_stats
where nation = 'MAR' and position like '%MF%' and pass_completion_percentage >= 75 and dribble_succesful_percentage >= 45
order by pass_completion_percentage desc

/* Attackers Selection */

select player,
nation,
age,
position,
matches_played,
goals,
pass_completion_percentage,
pass_distance,
pass_short_completed,
pass_mid_completed,
pass_long_completed,
assists,
crosses,
shot_creation_action,
goal_creating_action,
dribble_succesful_percentage,
yellow_card,
red_card,
fouls_drawn
penalty_won
from football_stats
where nation = 'MAR' and position like '%FW%' and shot_creation_action >= 2
order by goals desc;

select player,
team
from football_stats
where nation = 'MAR' and position like '%FW%' and shot_creation_action >= 2
order by goals desc;

select team from football_stats 
where league = 'Premier League';

select * from football_stats

/* Player from Big-5 Leagues that played to the World Cup: 350 from a total of 2921 players.*/

select *, wc.player as played_wc from football_stats fs
left join world_cup_player_stats wc ON fs.player = wc.player

select fs.player, team, league from football_stats fs
join world_cup_player_stats wc ON fs.player = wc.player

select count(fs.player) from football_stats fs
join world_cup_player_stats wc ON fs.player = wc.player

select count(player) from football_stats

select top 10 player, goals, league from football_stats
where (league = 'Serie A' or league = 'Bundesliga' or league = 'La Liga' or league = 'Premier League' or league = 'Ligue 1') and matches_played >= 25 and position like '%FW%' 
order by goals desc

select top 10 player, goals, league from football_stats
where (league = 'Premier League') and matches_played >= 25 and position like '%FW%' 
order by goals desc

SELECT top 1 player
FROM football_stats
WHERE league = 'Serie A'
ORDER BY tackles_won DESC




select player, tackles_won from football_stats
order by tackles_won desc






