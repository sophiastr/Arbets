
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

