use ismgroup49;
/*	
DROP TABLE bet;
DROP TABLE bookmaker;
DROP TABLE team_game;
DROP TABLE game;
DROP TABLE team;
DROP TABLE sport;
DROP TABLE answer;
DROP TABLE post;

DROP TABLE guest_user;
DROP TABLE user;
*/


/*DROP TABLE user;*/
CREATE TABLE user 
				(user_id int not null primary key auto_increment,
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
						(user_id int not null auto_increment,
                        register_date date,
                        status boolean,
                        CONSTRAINT PKGuestUser PRIMARY KEY (user_id),
                        CONSTRAINT FKGuestUserS1 FOREIGN KEY (user_id) REFERENCES user(user_id)
					on delete cascade
                        );





/*DROP TABLE post;*/                     
Create Table post (post_id int not null primary key auto_increment,
					text text,
                    user_id int,
                    date_time datetime,
                    upvote int check (upvote>=0),
                    downvote int check (downvote>=0),
					CONSTRAINT FKPost1 FOREIGN KEY (user_id) REFERENCES User(user_id)
					on delete cascade);
                    
                    
/*DROP TABLE answer;*/               
Create Table answer( answer_id int not null primary key auto_increment,
					text text,
					date_time datetime,
                    user_id int,
                    upvote int check (upvote>=0),
                    downvote int check (downvote>=0),
                    is_solution boolean,
                    post_id int,
                    CONSTRAINT FKAnswer1 FOREIGN KEY (user_id) REFERENCES user(user_id) on delete cascade,
					CONSTRAINT FKAnswer2 FOREIGN KEY (post_id) REFERENCES post(post_id) on delete cascade
					);
                    

                    
/*DROP TABLE sport;*/                    

Create Table sport ( sport_id int not null primary key auto_increment,
					name varchar(30),
                    type_of_result int
					);

/*DROP TABLE team;*/ 

Create Table team (team_id int not null primary key auto_increment,
					name varchar(30),
                    sport_id int,
                    playing_field varchar(30),
                    CONSTRAINT FKTeam1 FOREIGN KEY (sport_id) REFERENCES sport(sport_id) on delete cascade
                    );

/*DROP TABLE game;*/ 

Create Table game
			(game_id int not null primary key auto_increment,
            date_time datetime,
            playing_field varchar(80)
            );


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
			(bookmaker_id int not null primary key auto_increment,
             ssn varchar(80),
             name_of_bookmaker varchar(80),
             enterprise_name varchar(80),
             country varchar(80),
             commission DECIMAL(13,2));

 /*DROP TABLE bet;*/            
Create Table bet
			(bet_id int not null primary key auto_increment,
             rate1 DECIMAL(13,2),
             rate2 DECIMAL(13,2),
             game_id int,
             bookmaker_id int,
             CONSTRAINT FK_Bet_1 foreign key (game_id) References game(game_id)
             on delete cascade,
			 CONSTRAINT FK_Bet_2 foreign key (bookmaker_id) References bookmaker(bookmaker_id)
             on delete cascade);

