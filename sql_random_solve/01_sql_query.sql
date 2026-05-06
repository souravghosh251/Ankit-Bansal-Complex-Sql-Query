
Create database worldcup
use worldcup

/*Create statements */
create table icc_world_cup
(
Team_1 Varchar(20),
Team_2 Varchar(20),
Winner Varchar(20)
);
INSERT INTO icc_world_cup values('India','SL','India');
INSERT INTO icc_world_cup values('SL','Aus','Aus');
INSERT INTO icc_world_cup values('SA','Eng','Eng');
INSERT INTO icc_world_cup values('Eng','NZ','NZ');
INSERT INTO icc_world_cup values('Aus','India','India');

select * from icc_world_cup;

INSERT INTO icc_world_cup (team_1, team_2, winner)
VALUES ('India', 'Australia', 'Draw');

UPDATE icc_world_cup
SET team_2 = 'Aus'
WHERE team_2 = 'Australia';
SET SQL_SAFE_UPDATES = 0;

select * from icc_world_cup

select team_name , count(1) as no_of_matches_played, sum(win_flg) as no_of_matches_won, sum(draw_flg) as no_of_matches_draw, (count(1) - sum(win_flg) - sum(draw_flg)) as no_of_matches_loss
from(
select team_1 as team_name,
case when team_1= winner then 1 else 0 end as win_flg,
case when winner='Draw' then 1 else 0 end as draw_flg
from icc_world_cup
union all
select team_2 as team_name,
case when team_2= winner then 1 else 0 end as win_flg,
case when winner='Draw' then 1 else 0 end as draw_flg
from icc_world_cup) A
group by team_name
order by no_of_matches_won desc