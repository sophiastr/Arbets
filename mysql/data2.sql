
insert into sport(name,type_of_result) values ("basketball", 2);
insert into sport(name,type_of_result) values( "football", 3);
insert into sport(name,type_of_result) values( "volleyball", 2);

select * from team_game;


delete from team where team_id = 8;

insert into team(name,sport_id ,playing_field ) values ( "Olympiakos", 1, "Sef");
insert into team(name,sport_id ,playing_field )  values ( "Olympiakos", 2, "Karaiskaki");
insert into team(name,sport_id ,playing_field )  values ( "Olympiakos", 3, "Melina Merkouri");
insert into team(name,sport_id ,playing_field )  values ( "Panathinaikos", 1,"Nikos Galis" );
insert into team(name,sport_id ,playing_field )  values ( "Panathinaikos", 2, "Apostolos Nikolaidis");
insert into team(name,sport_id ,playing_field )  values ("Panathinaikos", 3, "Makis Liougas");
insert into team(name,sport_id ,playing_field )  values ("Paok", 2, "Gipedo Toumpas");
insert into team(name,sport_id ,playing_field )  values ("Paok", 1, "Paok Sports Arena");
insert into team(name,sport_id ,playing_field )  values ("Paok", 3, "Paok Sports Arena");

insert into bet(rate1, rate2, game_id,bookmaker_id) values(2.11, 4.35, 1, 1);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(2.98, 2.25, 1, 2);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(1.25, 3.10, 2, 1);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(2.8, 5.55, 2, 2);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(1.59, 6.30, 3, 1);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(2.8, 3.00, 3, 2);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(1.15, 8.90, 4, 1);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(2.8, 8.80, 4, 2);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(1.22, 4.78, 5, 1);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(1.5, 7.47, 5, 2);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(3.20, 1.5, 6, 1);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(2.5, 1.56, 6, 2);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(3.90, 1.50, 7, 1);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(4.00, 1.41, 7, 2);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(1.54, 3.80, 8, 1);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(1.8, 3.15, 8, 2);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(3.50, 1.20, 9, 1);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(3.90, 1,46, 9, 2);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(1.70, 2,59, 10, 1);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(1,58, 2.60, 10, 2);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(1.25, 3.10, 10, 1);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(2.8, 5.55, 10, 2);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(2.14, 3.09, 11, 1);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(2.24, 3.04, 11, 2);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(2.4, 5.55, 12, 1);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(2.8, 5.25, 12, 2);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(3.8, 2.93, 13, 1);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(3.9, 2.6, 13, 2);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(1.55, 5.00, 14, 1);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(2.0, 4.95, 14, 2);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(1.95, 3.12, 15, 1);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(2.14, 2.85, 15, 2);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(5.55, 2.14, 16, 1);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(5.78, 1.61, 16, 2);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(2.55, 1.9, 17, 1);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(2.8, 1.83, 17, 2);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(1.86, 2.50, 18, 1);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(1.97, 2.45, 18, 2);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(2.11, 4.35, 19, 1);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(2.98, 2.25, 19, 2);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(1.25, 3.10, 20, 1);
insert into bet(rate1, rate2, game_id,bookmaker_id) values(2.8, 5.55, 20, 2);


/*MHN KANETE ΕXECUTE ΓΤ ΔΕΝ ΚΑΝΟΥΝ MATCH ΜΕ ΤΟΝ ΠΙΝΑΚΑ*/
insert into game values (1, "2022-02-04 20:00:00","Karaiskaki","Olympiakos","Panathinaikos");
insert into game values (2, "2022-02-04 22:00:00", "Nikos Galis","Panathinaikos","Olympiakos");
insert into game values (3, "2022-02-05 21:30:00", "Sef" ,"Olympiakos","Paok");
insert into game values (4, "2022-02-06 20:00:00", "Melina Merkouri","Olympiakos","Panathinaikos");
insert into game values (5, "2022-02-07 20:00:00", "Makis Liougas","Panathinaikos", "Paok");
insert into game values (6, "2022-02-07 22:30:00", "Sef", "Olympiakos","Panathinaikos");
insert into game values (7, "2022-02-08 18:00:00", "Melina Merkouri" ,"Olympiakos","Paok");
insert into game values (8, "2022-02-08 18:00:00", "Paok Sports Arena","Paok","Panathinaikos");
insert into game values (9, "2022-02-08 18:00:00", "Sef" ,"Olympiakos","Panathinaikos");
insert into game values (10, "2022-02-09 18:00:00", "Gipedo Toumpas", "Paok","Olympiakos");
insert into game values (11, "2022-02-09 18:00:00", "Karaiskaki" ,"Olympiakos","Paok");
insert into game values (12, "2022-02-09 18:00:00", "Paok Sports Arena" ,"Paok","Panathinaikos");
insert into game values (13, "2022-02-10 18:00:00", "Paok Sports Arena" ,"Paok","Panathinaikos");
insert into game values (14, "2022-02-10 18:00:00", "Makis Liougas" , "Panathinaikos","Paok");
insert into game values (15, "2022-02-11 18:00:00", "Sef" ,"Olympiakos","Paok");
insert into game values (16, "2022-02-11 18:00:00", "Gipedo Toumpas","Paok","Olympiakos");
insert into game values (17, "2022-02-11 18:00:00", "Apostolos Nikolaidis" ,"Panathinaikos","Olympiakos");
insert into game values (18, "2022-02-11 18:00:00", "Sef" ,"Olympiakos","Paok");
insert into game values (19, "2022-02-12 20:00:00", "Karaiskaki" ,"Olympiakos","Paok");
insert into game values (20, "2022-02-12 22:00:00", "Makis Liougas" , "Panathinaikos","Paok");




insert into team_game values(2,1 );
insert into team_game values(5,1 );
insert into team_game values(4, 2);
insert into team_game values(1, 2);
insert into team_game values(1,3);
insert into team_game values(8, 3);
insert into team_game values(3, 4);
insert into team_game values(6 ,4);
insert into team_game values(6,5 );
insert into team_game values(9,5 );
insert into team_game values(1, 6);
insert into team_game values(4, 6);
insert into team_game values(3,7);
insert into team_game values(9, 7);
insert into team_game values(8, 8);
insert into team_game values(4,8);
insert into team_game values(1,9 );
insert into team_game values(4, 9);
insert into team_game values(7, 10);
insert into team_game values(2,10);
insert into team_game values(2, 11);
insert into team_game values(7, 11);
insert into team_game values(6,12);
insert into team_game values(9,12);
insert into team_game values(8,13);
insert into team_game values(4, 13);
insert into team_game values(6, 14);
insert into team_game values(9,14);
insert into team_game values(1, 15);
insert into team_game values(8, 15);
insert into team_game values(7,16);
insert into team_game values(2,16);
insert into team_game values(5,17);
insert into team_game values(2, 17);
insert into team_game values(1, 18);
insert into team_game values(8,18);
insert into team_game values(2, 19);
insert into team_game values(7, 19);
insert into team_game values(6,20);
insert into team_game values(9,20);


insert into user values(1, "Sophia", "Sotiropoulou", "sophia_str", "sophia123", "2001-07-19", "GR125347902563789222", "sophiastr@gamil.com", 100);
insert into user values(2, "Melenia", "Bempedeli", "melenia_bebedeli", "melenia123", "2001-11-29", "GR347927937025637892", "meleniabe@gamil.com", 150);
insert into user values(3, "Anna", "Mastori", "mastori_anna", "mastoriii", "2001-02-04", "GR908567832563789999", "mastori@gamil.com", 200);

insert into star_user values(1, 20);
insert into star_user values(3, 23.95);

insert into guest_user values(2, "2021-11-09", 1);

insert into bookmaker values(1, 11223344, "stoiximan", "stoiximan_bets AE", "Greece", 0 );
insert into bookmaker values(2, 55667788, "novibet", "novibet_bets AE", "Greece", 0 );
