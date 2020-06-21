-- PROGRESSION - 1


-- 1. **Create table city**
create table city(id VARCHAR(11), name VARCHAR(50));


-- 2. **Create table referee**
create table referee(id VARCHAR(11), name VARCHAR(50));


-- 3. **Create table innings**
create table innings(id INT, innings_number INT);


-- 4. **Create table extra_type**
create table extra_type(id INT, name VARCHAR(50));


-- 5. **Create table skill**
create table skill(id INT, name VARCHAR(50));


-- 6. **Create table team**
create table team(id INT, name VARCHAR(50), coach VARCHAR(50), home_city INT, captain INT);


-- 7. **Create table player**
create table player(id INT, name VARCHAR(50), country VARCHAR(50), skill_id INT, team_id INT);


-- 8. **Create table venue**
create table venue( id INT, stadium_name VARCHAR(50),city_id INT);


-- 9. **Create table event**
create table event(id INT, innings_id INT, event_no INT, raider_id INT, raid_points INT, defending_points INT, clack_in_econds INT, team_one_score INT, team_two_score INT);


-- 10. **Create table extra_event**
create table extra_event(id INT, event_id INT, extra_type_id INT, points INT, scoring_team_id INT);


-- 11. **Create table outcome**
create table outcome(id INT, status VARCHAR(100),  winner_team_id INT, score INT, player_of_match INT);


-- 12. **Create table game**
create table game(id INT, game_date DATE, team_id_1 INT, team_id_2 INT, venue_id INT, outcome_id INT, referee_id_1 INT, referee_id_2 INT, first_innings_id INT, second_innings_id INT);
DROP table game;

-- 13. **Drop table city**
DROP table city;

-- 14. **Drop table innings**
DROP table innings;

-- 15. **Drop table skill**
DROP table skill;


-- 16. **Drop table extra_type**
DROP table extra_type;
