insert into sport(name , type_of_result) values ("basketball", 2);
insert into sport(name , type_of_result) values("volleyball", 2);


insert into team(name, sport_id, playing_field) values("Olympiakos", 1, "Gipedo Sef");
insert into team(name, sport_id, playing_field) values("Olympiakos", 2, "Gipedo Melina Merkouri");
insert into team(name, sport_id, playing_field) values("Panathinaikos", 1,"Gipedo Nikos Galis" );
insert into team(name, sport_id, playing_field) values("Panathinaikos", 2, "Gipedo Makis Liougas");
insert into team(name, sport_id, playing_field) values("Paok", 1, "Paok Sports Arena");
insert into team(name, sport_id, playing_field) values("Paok", 2, "Paok Sports Arena");


insert into game(date_time, playing_field) values("2022-02-04 20:00:00","Gipedo Melina Merkouri");
insert into game(date_time, playing_field) values("2022-02-04 22:00:00", "Gipedo Nikos Galis");
insert into game(date_time, playing_field) values("2022-02-05 21:30:00", "Gipedo Sef");
insert into game(date_time, playing_field) values("2022-02-06 20:00:00", "Gipedo Melina Merkouri");
insert into game(date_time, playing_field) values("2022-02-07 20:00:00", "Gipedo Makis Liougas");
insert into game(date_time, playing_field) values("2022-02-07 22:30:00", "Gipedo Sef");
insert into game(date_time, playing_field) values("2022-02-08 18:00:00", "Gipedo Melina Merkouri");
insert into game(date_time, playing_field) values("2022-02-08 18:00:00", "Paok Sports Arena");
insert into game(date_time, playing_field) values("2022-02-08 18:00:00", "Gipedo Sef" );
insert into game(date_time, playing_field) values("2022-02-09 18:00:00", "Gipedo Makis Liougas");
insert into game(date_time, playing_field) values("2022-02-09 18:00:00", "Gipedo Gipedo Melina Merkouri");
insert into game(date_time, playing_field) values("2022-02-09 18:00:00", "Paok Sports Arena");
insert into game(date_time, playing_field) values("2022-02-10 18:00:00", "Gipedo Makis Liougas" );
insert into game(date_time, playing_field) values("2022-02-11 18:00:00", "Gipedo Sef" );
insert into game(date_time, playing_field) values("2022-02-11 18:00:00", "Gipedo Makis Liougas");
insert into game(date_time, playing_field) values("2022-02-11 18:00:00", "Paok Sports Arena");
insert into game(date_time, playing_field) values("2022-02-11 18:00:00", "Gipedo Sef");
insert into game(date_time, playing_field) values("2022-02-12 20:00:00", "Gipedo Melina Merkouri");
insert into game(date_time, playing_field) values("2022-02-12 22:00:00", "Gipedo Makis Liougas");
insert into game(date_time, playing_field) values("2022-02-14 22:00:00", "Gipedo Makis Liougas");


insert into bookmaker(ssn, name_of_bookmaker, enterprise_name,country , commission) values( 11223344, "stoiximan", "stoiximan_bets AE", "Greece", 0 );
insert into bookmaker(ssn, name_of_bookmaker, enterprise_name,country , commission) values( 55667788, "novibet", "novibet_bets AE", "Greece", 0 );

insert into team_game values(2,1,2);
insert into team_game values(4,1,2);
insert into team_game values(4,2,3);
insert into team_game values(2,2,3);
insert into team_game values(1,3,1);
insert into team_game values(3,3,1);
insert into team_game values(2,4,2);
insert into team_game values(6,4,2);
insert into team_game values(6,5,4);
insert into team_game values(4,5,4);
insert into team_game values(1,6,1);
insert into team_game values(3,6,1);
insert into team_game values(2,7,2);
insert into team_game values(4,7,2);
insert into team_game values(5,8,5);
insert into team_game values(1,8,5);
insert into team_game values(1,9,1);
insert into team_game values(3,9,1);
insert into team_game values(4,10,4);
insert into team_game values(2,10,4);
insert into team_game values(2,11,2);
insert into team_game values(4,11,2);
insert into team_game values(6,12,6);
insert into team_game values(2,12,6);
insert into team_game values(2,13,4);
insert into team_game values(4,13,4);
insert into team_game values(1,14,1);
insert into team_game values(5,14,1);
insert into team_game values(4,15,4);
insert into team_game values(6,15,4);
insert into team_game values(6,16,6);
insert into team_game values(2,16,2);
insert into team_game values(5,17,1);
insert into team_game values(1,17,1);
insert into team_game values(2,18,2);
insert into team_game values(4,18,2);
insert into team_game values(2,19,4);
insert into team_game values(4,19,4);
insert into team_game values(2,20,4);
insert into team_game values(4,20,4);

insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(2.11, 4.35, 1, 1);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(2.98, 2.25, 1, 2);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(1.25, 3.10, 2, 1);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(2.8, 5.55, 2, 2);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(1.59, 6.30, 3, 1);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(2.8, 3.00, 3, 2);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(1.15, 8.90, 4, 1);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(2.8, 8.80, 4, 2);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(1.22, 4.78, 5, 1);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(1.5, 7.47, 5, 2);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(3.20, 1.5, 6, 1);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(2.5, 1.56, 6, 2);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(3.90, 1.50, 7, 1);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(4.00, 1.41, 7, 2);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(1.54, 3.80, 8, 1);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(1.8, 3.15, 8, 2);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(3.50, 1.20, 9, 1);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(3.90, 1.46, 9, 2);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(1.70, 2.59, 10, 1);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(1.58, 2.60, 10, 2);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(1.25, 3.10, 10, 1);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(2.8, 5.55, 10, 2);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(2.14, 3.09, 11, 1);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(2.24, 3.04, 11, 2);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(2.4, 5.55, 12, 1);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(2.8, 5.25, 12, 2);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(3.8, 2.93, 13, 1);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(3.9, 2.6, 13, 2);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(1.55, 5.00, 14, 1);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(2.0, 4.95, 14, 2);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(1.95, 3.12, 15, 1);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(2.14, 2.85, 15, 2);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(5.55, 2.14, 16, 1);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(5.78, 1.61, 16, 2);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(2.55, 1.9, 17, 1);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(2.8, 1.83, 17, 2);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(1.86, 2.50, 18, 1);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(1.97, 2.45, 18, 2);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(2.11, 4.35, 19, 1);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(2.98, 2.25, 19, 2);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(1.25, 3.10, 20, 1);
insert into bet(home_team_rate, visiting_team_rate, game_id,bookmaker_id) values(2.8, 5.55, 20, 2);


insert into user(firstname, lastname, username, password, birthday, bank_account, email, points) values("Sophia", "Sotiropoulou", "sophia_str", "sophia123", "2001-07-19", "GR125347902563789222", "sophiastr@gamil.com", 100);
insert into user(firstname, lastname, username, password, birthday, bank_account, email, points) values("Melenia", "Bempedeli", "melenia_bebedeli", "melenia123", "2001-11-29", "GR347927937025637892", "meleniabe@gamil.com", 150);
insert into user(firstname, lastname, username, password, birthday, bank_account, email, points) values("Anna", "Mastori", "mastori_anna", "mastoriii", "2001-02-04", "GR908567832563789999", "mastori@gamil.com", 200);

insert into guest_user(register_date, status) values("2021-11-09", 1);

insert into post(text, user_id, date_time, upvote, downvote) values("Γνωρίζει κάποιος ποιό είναι το αποδεκτό όριο ποναταρίσματος στη stoiximan;", 1,  "2022-02-04 20:59:54", 1, 0);
insert into post(text, user_id, date_time, upvote, downvote) values("Στο μάτς της Πέμπτης Ολυμπιακός-Πάοκ έχει βρεθεί σίγουρο στοίχημα με πολύ μεγάλο κέρδος.Μπείτε τώρα και δείτε το!", 2,  "2022-02-15 16:05:44", 18, 0);

insert into answer(text,date_time, user_id, upvote, downvote, is_solution, post_id) values("Eίναι 3890€","2022-02-04 22:45:34", 2, 2, 0, true, 1);
insert into answer(text, date_time, user_id, upvote, downvote, is_solution, post_id) values("Όχι, το ψάχνω και εγώ","2022-02-04 22:55:54", 3, 0, 0, false,1);
insert into answer(text,date_time, user_id, upvote, downvote, is_solution, post_id) values("Μεγάλη ευκαρία","2022-02-04 22:55:54", 3, 7, 0, false,2);


