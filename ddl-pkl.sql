-- PROGRESSION - 1


-- 1. **Create table city**

CREATE TABLE city
(
id number(11) primary key,
name varchar(50) not null
);


-- 2. **Create table referee**
CREATE TABLE referee
(
id number(11) primary key,
name varchar(50) not null
);


-- 3. **Create table innings**
CREATE TABLE innings
(
id number(11) primary key,
innings_number number(11) not null
);

-- 4. **Create table extra_type**
CREATE TABLE extra_type
(
id number(11) primary key,
name varchar(50) not null
);

-- 5. **Create table skill**
CREATE TABLE skill
(
id number(11) primary key,
name varchar(50)
);

-- 6. **Create table team**
CREATE TABLE team
(
id number(11) primary key,
name varchar(50) not null,
coach varchar(50) not null,
home_city number(11) not null,
captain number(11) not null
);

-- 7. **Create table player**
CREATE TABLE player
(
id number(11) primary key,
name varchar(50),
country varchar(50),
skill_id number(11),
team_id number(11)
);
-- 8. **Create table venue**
CREATE TABLE venue
(
id number(11) primary key,
stadium_name varchar(50),
city_id number(11)
);
-- 9. **Create table event**
CREATE TABLE event
(
id number(11) primary key,
innings_id number(11) not null,
event_no number(11) not null,
raider_id number(11) not null,
raid_points number(11) not null,
defending_points number(11) not null,
clock_in_seconds number(11) not null,
team_one_score number(11) not null,
team_two_score number(11) not null
);
-- 10. **Create table extra_event**
CREATE TABLE extra_event
(
id number(11) primary key,
event_id number(11),
event_type_id number(11),
points number(11) not null,
scoring_team number(11)
);
-- 11. **Create table outcome**
CREATE TABLE outcome
(
id number(11) primary key,
status varchar(50) not null,
winner_team_id number(11),
score number(11),
player_of_match number(11)
);

-- 12. **Create table game**
CREATE TABLE game
(
id number(11) primary key,
game_date date not null,
team_id_1 number(11),
team_id_2 number(11),
venue_id number(11),
outcome_id number(11),
referee_id_1 number(11),
referee_id_2 number(11),
first_innings_id number(11),
second_innings_id number(11)
);
-- 13. **Drop table city**
drop table city;
-- 14. **Drop table innings**
drop table innings;
-- 15. **Drop table skill**
drop table skill;
-- 16. **Drop table extra_type**
drop table extra_type;