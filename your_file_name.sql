-- PROGRESSION - 1

Create Table city
( id NUMBER(11),
  name VARCHAR(50) NOT NULL,
  CONSTRAINT pk_city PRIMARY KEY(id)
  );

Create Table referee
( id NUMBER(11),
  name VARCHAR(50) NOT NULL,
  CONSTRAINT pk_referee PRIMARY KEY(id)
  );

Create Table innings
( id NUMBER(11),
  innings_number NUMBER(11) NOT NULL,
  CONSTRAINT pk_innings PRIMARY KEY(id)
  );
  
  
Create table extra_type
( id NUMBER(11),
  name VARCHAR(50) NOT NULL,
  CONSTRAINT pk_extra_type PRIMARY KEY(id)
  );

Create table skill
( id NUMBER(11),
  name VARCHAR(50) NOT NULL,
  CONSTRAINT pk_skill PRIMARY KEY(id)
  );


Create table team
( id NUMBER(11),
  name VARCHAR(50) NOT NULL,
  coach VARCHAR(50) NOT NULL,
  home_city NUMBER(11)NOT NULL,
  captain NUMBER(11)NOT NULL,
  CONSTRAINT pk_team PRIMARY KEY(id),
  CONSTRAINT kk_team FOREIGN KEY(home_city) REFERENCES city(id)
  );
  
Create table player
( id NUMBER(11),
  name VARCHAR(50)NOT NULL,
  country VARCHAR(50)NOT NULL,
  skill_id NUMBER(11)NOT NUll,
  team_id NUMBER(11)NOT NULL,
  CONSTRAINT pk_player PRIMARY KEY(id),
  CONSTRAINT kk_player FOREIGN KEY(skill_id) REFERENCES skill(id),
  CONSTRAINT lk_player FOREIGN KEY(team_id) REFERENCES team(id)
  );
  
  

Create table venue
( id NUMBER(11),
  stadium_name VARCHAR(50) NOT NULL,
  city_id NUMBER(11) NOT NULL,
  CONSTRAINT pk_venue PRIMARY KEY(id),
  CONSTRAINT lk_city_id FOREIGN KEY(city_id) REFERENCES city(id)
  );
  

Create table event
( id NUMBER(11),
  innings_id NUMBER(11) NOT NULL,
  event_no NUMBER(11) NOT NULL,
  raider_id NUMBER(11) NOT NULL,
  defending_points NUMBER(11) NOT NULL,
  clock_in_seconds NUMBER(11) NOT NULL,
  team_one_score NUMBER(11) NOT NULL,
  team_two_score NUMBER(11) NOT NULL,
  CONSTRAINT pk_event PRIMARY KEY(id),
  CONSTRAINT hk_event FOREIGN KEY(innings_id) REFERENCES innings(id),
  CONSTRAINT jk_event FOREIGN KEY(raider_id) REFERENCES player(id)
  );
  
  
Create table extra_event
( id NUMBER(11),
  event_id NUMBER(11)NOT NULL,
  extra_type_id NUMBER(11)NOT NULL,
  points NUMBER(11)NOT NULL,
  scoring_team_id NUMBER(11)NOT NULL,
  CONSTRAINT pk_extra_event PRIMARY KEY(id),
  CONSTRAINT hk_extra_event FOREIGN KEY(event_id) REFERENCES event(id),
  CONSTRAINT yk_extra_event FOREIGN KEY(extra_type_id) REFERENCES extra_type(id),
  CONSTRAINT ck_event FOREIGN KEY(scoring_team_id) REFERENCES team(id)
  );
   
  
Create table outcome
( id NUMBER(11),
 status VARCHAR(100)NOT NULL,
 winner_team_id NUMBER(11),
 score NUMBER(11),
 player_of_match NUMBER(11),
 CONSTRAINT pk_outcome PRIMARY KEY(id),
 CONSTRAINT hk_outcome FOREIGN KEY(winner_team_id) REFERENCES team(id),
 CONSTRAINT ik_outcome FOREIGN KEY(player_of_match) REFERENCES player(id)
 );
 


Create Table game
(
id NUMBER(11),
game_date DATE NOT NULL,
team_id_1 NUMBER(11) NOT NULL,
team_id_2 NUMBER(11) NOT NULL,
venue_id NUMBER(11) NOT NULL,
outcome_id NUMBER(11) NOT NULL,
referee_id_1 NUMBER(11) NOT NULL,
referee_id_2 NUMBER(11) NOT NULL,
first_innings_id NUMBER(11) NOT NULL,
second_innings_id NUMBER(11) NOT NULL,
CONSTRAINT pk_game PRIMARY KEY(id),
CONSTRAINT fk_game_team_id_1 FOREIGN KEY(team_id_1) REFERENCES team(id),
CONSTRAINT fk_game_team_id_2 FOREIGN KEY(team_id_2) REFERENCES team(id),
CONSTRAINT fk_game_venue FOREIGN KEY(venue_id) REFERENCES venue(id),
CONSTRAINT fk_game_outcome_id FOREIGN KEY(outcome_id) REFERENCES outcome(id),
CONSTRAINT fk_game_refree_id_1 FOREIGN KEY(referee_id_1) REFERENCES referee(id),
CONSTRAINT fk_game_refree_id_2 FOREIGN KEY(referee_id_2) REFERENCES referee(id),
CONSTRAINT fk_game_first FOREIGN KEY(first_innings_id) REFERENCES innings(id),
CONSTRAINT fk_game_second FOREIGN KEY(second_innings_id) REFERENCES innings(id)
);
  
  

Drop table city;

Drop table innings;

Drop table skill;

Drop table extra_type;
