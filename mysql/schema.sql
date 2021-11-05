use ismgroup49;
/*	DROP TABLE suggested_sure_bet_bookmaker;
DROP TABLE suggested_sure_bet;
DROP TABLE sure_bet_bets;
DROP TABLE sure_bet;
DROP TABLE bet;
DROP TABLE bookmaker;
DROP TABLE team_game;
DROP TABLE game;
DROP TABLE team;
DROP TABLE sport;
DROP TABLE post;
DROP TABLE answer;
DROP TABLE followed_star_user;  
DROP TABLE star_user;
DROP TABLE guest_user;
DROP TABLE user;
*/


/*DROP TABLE user;*/
CREATE TABLE user 
				(user_id int not null primary key,
                  firstname varchar(20),
                  lastname  varchar(20),
                  username varchar(20),
                  password varchar(20),
                  birthday date,
                  bank_account varchar(20),
                  email varchar(20),
                  points int check (points>=0)
                  );
               
               
/*DROP TABLE guest_user;*/
Create Table guest_user 
						(user_id int not null,
                        register_date date,
                        status boolean,
                        CONSTRAINT PKGuestUser PRIMARY KEY (user_id),
                        CONSTRAINT FKGuestUserS1 FOREIGN KEY (user_id) REFERENCES user(user_id)
					on delete cascade
                        );

/*DROP TABLE star_user;*/
Create Table star_User 
						( user_id int not null,
                        price DECIMAL(13,2) check (Price>=0),
                        CONSTRAINT PKStarUser PRIMARY KEY (user_id),
                        CONSTRAINT FKStarUser FOREIGN KEY (user_id) REFERENCES User(User_Id)
					on delete cascade
                        );

/*DROP TABLE followed_star_user;*/                        
Create Table followed_star_user (user_id int not null,
								star_user_id int not null,
                                CONSTRAINT PKFollowed_Star_User PRIMARY KEY (user_id,star_user_id),
                        CONSTRAINT FKFollowed_Star_User1 FOREIGN KEY (user_Id) REFERENCES user(user_Id)
					on delete cascade,
							CONSTRAINT FKFollowed_Star_User2 FOREIGN KEY (star_user_id) REFERENCES star_user(user_id)
					on delete cascade	
                );
              
/*DROP TABLE answer;*/               
Create Table answer( answer_id int not null primary key,
					date date,
                    user_id int,
                    upvote int check (upvote>=0),
                    downvote int check (downvote>=0),
                    is_solution boolean,
                    CONSTRAINT FKAnswer1 FOREIGN KEY (user_Id) REFERENCES user(user_id)
					on delete cascade
					);
                    
/*DROP TABLE post;*/                     
Create Table post (post_id int not null primary key,
					text text,
                    user_id int,
                    date date,
                    answer_id int,
                    upvote int check (upvote>=0),
                    downvote int check (downvote>=0),
                    
                    CONSTRAINT FKPost1 FOREIGN KEY (answer_id) REFERENCES answer(answer_id) on delete cascade,
					CONSTRAINT FKPost2 FOREIGN KEY (user_id) REFERENCES User(user_id)
					on delete cascade);
                    
/*DROP TABLE sport;*/                    

Create Table sport ( sport_id int not null primary key,
					name varchar(30),
                    type_of_result int
					);

/*DROP TABLE team;*/ 

Create Table team (team_id int not null primary key,
					name varchar(30),
                    sport_id int,
                    playing_field varchar(30),
                    sports_club varchar(30),
                    CONSTRAINT FKTeam1 FOREIGN KEY (sport_id) REFERENCES sport(sport_id) on delete cascade
                    );

/*DROP TABLE game;*/ 

Create Table game
			(game_id int not null primary key,
            date_time datetime,
            playing_field varchar(80),
            home_team varchar(80),
            visiting_team varchar(80));


/*DROP TABLE team_game;*/  
Create Table team_game
			(team_id INT NOT NULL,
			 game_id INT NOT NULL,
			 CONSTRAINT PK_Team_Game PRIMARY KEY (team_id,game_id),
             CONSTRAINT FK_Team_Game_1 foreign key (team_id) References team(team_id)
             on delete cascade,
             CONSTRAINT FK_Team_Game_2 foreign key (game_id) References game(game_id)
             on delete cascade);


 /*DROP TABLE bookmaker;*/              
Create Table bookmaker
			(bookmaker_id int not null primary key,
             ssn int,
             name_of_bookmaker varchar(80),
             enterprise_name varchar(80),
             country varchar(80),
             commission DECIMAL(13,2));

 /*DROP TABLE bet;*/            
Create Table bet
			(bet_id int not null primary key,
             rate DECIMAL(13,2),
             game_id int,
             bookmaker_id int,
             CONSTRAINT FK_Bet_1 foreign key (game_id) References game(game_id)
             on delete cascade,
			 CONSTRAINT FK_Bet_2 foreign key (bookmaker_id) References bookmaker(bookmaker_id)
             on delete cascade);


/*DROP TABLE sure_bet;*/ 		
Create Table sure_bet
			(sure_bet_id int not null primary key);


/*DROP TABLE sure_bet_bets;*/ 		
Create Table sure_bet_bets
			(sure_bet_id int not null,
			 bet_id int not null,
             amount_in_bet DECIMAL(13,2),
             CONSTRAINT PK_Sure_Bet_Bets PRIMARY KEY (sure_bet_id,bet_id),
             CONSTRAINT FK_Sure_Bet_Bets_1 foreign key (sure_bet_id) References sure_bet(sure_bet_id)
             on delete cascade,
             CONSTRAINT FK_Sure_Bet_Bets_2 foreign key (bet_id) References bet(bet_id)
             on delete cascade);


/*DROP TABLE suggested_sure_bet;*/             

Create Table suggested_sure_bet
			(suggested_sure_bet_id int not null primary key,
             content text,
             date_time datetime,
             sure_bet_id int,
             star_user_id int,
             CONSTRAINT FK_Suggested_Sure_Bet_1 foreign key (sure_bet_id) References sure_bet(sure_bet_id)
             on delete cascade,
             CONSTRAINT FK_Suggested_Sure_Bet_2 foreign key (star_user_id) References star_user(user_id)
             on delete cascade);

/*DROP TABLE suggested_sure_bet_book_maker;*/ 		

Create Table suggested_sure_bet_book_maker
			(suggested_sure_bet_id int not null,
             bookmaker_id int not null,
             amount DECIMAL(13,2),
			 CONSTRAINT PK_Suggested_Sure_Bet_Book_Maker PRIMARY KEY (suggested_sure_bet_id,bookmaker_id),
             CONSTRAINT FK_Suggested_Sure_Bet_Book_Maker_1 foreign key (suggested_sure_bet_id) References suggested_sure_bet(suggested_sure_bet_id)
             on delete cascade,
             CONSTRAINT FK_Suggested_Sure_Bet_Book_Maker_2 foreign key (bookmaker_id) References bookmaker(bookmaker_id)
             on delete cascade);
