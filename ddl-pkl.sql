-- PROGRESSION - 1


-- 1. **Create table city**
create table city(city_name VARCHAR(40),city_id varchar(40));


-- 2. **Create table referee**
create table referee(referee_name VARCHAR(40),referee_id varchar(40));


-- 3. **Create table innings**
create table innings(innings_name VARCHAR(40));


-- 4. **Create table extra_type**
create table extra_type(extra_game VARCHAR(40));


-- 5. **Create table skill**
create table skill(player_skill VARCHAR(40));


-- 6. **Create table team**
create table team(team_name VARCHAR(40));

-- 7. **Create table player**
create table player(table_num NUMBER(4));


-- 8. **Create table venue**
create table venue(venue_time DATE);

-- 9. **Create table event**
create table event(event_day DATE);

-- 10. **Create table extra_event**
create table extra_event(event_name VARCHAR(20));

-- 11. **Create table outcome**
create table outcome(outcome VARCHAR(20));


-- 12. **Create table game**
create table game(game_id VARCHAR(20),game_name VARCHAR(20));


-- 13. **Drop table city**
DROP table city;

-- 14. **Drop table innings**
DROP table innings;

-- 15. **Drop table skill**
DROP table skill;


-- 16. **Drop table extra_type**
DROP table extra_type;
