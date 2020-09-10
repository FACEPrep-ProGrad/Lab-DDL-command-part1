-- PROGRESSION - 1


-- 1. **Create table city**
CREATE TABLE city
(
id NUMBER(11),
name VARCHAR(50) NOT NULL,
PRIMARY KEY(id)
);
-- 2. **Create table referee**
CREATE TABLE referee
(
id NUMBER(11),
name VARCHAR(50) NOT NULL,
PRIMARY KEY(id)
);
-- 3. **Create table innings**
CREATE TABLE innings
(
id NUMBER(11),
innings_number NUMBER(11),
PRIMARY KEY(id)
);
-- 4. **Create table extra_type**
CREATE TABLE extra_type
(
id NUMBER(11),
name VARCHAR(50) NOT NULL,
PRIMARY KEY(id)
);


-- 5. **Create table skill**
CREATE TABLE skill
(
id NUMBER(11),
name VARCHAR(50) NOT NULL,
PRIMARY KEY(id)
);
-- 6. **Create table team**
CREATE TABLE team
(
id NUMBER(11),
name VARCHAR(50) NOT NULL,
coach VARCHAR(50) NOT NULL,
home_city NUMBER(11),
captain NUMBER(11),
PRIMARY KEY(id),
CONSTRAINT FK_team FOREIGN KEY (id)
REFERENCES team(id)
);
-- 7. **Create table player**
CREATE TABLE player
(
id NUMBER(11),
name VARCHAR(50) NOT NULL,
country VARCHAR(50) NOT NULL,
skill_id NUMBER(11),
team_id NUMBER(11),
PRIMARY KEY(id)

);
ALTER TABLE player
ADD skill_id NUMBER(11) NOT NULL;
ALTER TABLE player
ADD CONSTRAINT FK_player
FOREIGN KEY (skill_id) REFERENCES player(skill_id);
-- 8. **Create table venue**
CREATE TABLE venue
(
id NUMBER(11),
stadium_name VARCHAR(50) NOT NULL,
city_id NUMBER(11),
PRIMARY KEY(id),

);
-- 9. **Create table event**
CREATE TABLE event
(
id NUMBER(11),
innings_id NUMBER(11),
event_no NUMBER(11),
raider_id NUMBER(11),
raid_points NUMBER(11),
defending_points NUMBER(11),
clock_in_seconds NUMBER(11),
team_one_score NUMBER(11),
team_two_score NUMBER(11)
);
-- 10. **Create table extra_event**
CREATE TABLE extra_event
(
id NUMBER(11),
event_id NUMBER(11),
extra_type_id NUMBER(11),
points NUMBER(11),
scoring_team_id NUMBER(11)
);
-- 11. **Create table outcome**
CREATE TABLE outcome
(
id NUMBER(11),
status VARCHAR(100),
winner_team_id NUMBER(11),
score NUMBER(11),
player_of_match NUMBER(11)
);
-- 12. **Create table game**
CREATE TABLE game
(
id NUMBER(11),
game_date DATE,
team_id_1 NUMBER(11),
team_id_2 NUMBER(11),
venue_id NUMBER(11),
outcome_id NUMBER(11),
referee_id_1 NUMBER(11),
referee_id_2 NUMBER(11),
first_innings_id NUMBER(11),
second_innings_id NUMBER(11)
);
-- 13. **Drop table city**

-- 14. **Drop table innings**

-- 15. **Drop table skill**

-- 16. **Drop table extra_type**
CREATE TABLE team_test
(
id NUMBER(11),
name VARCHAR(50),
coach VARCHAR(50),
home_city VARCHAR(11)
);


