use ismgroup49;
/*	DROP TABLE Suggested_Sure_Bet_Book_Maker;
DROP TABLE Suggested_Sure_Bet;
DROP TABLE Sure_Bet_Bets;
DROP TABLE Sure_Bet;
DROP TABLE Bet;
DROP TABLE Book_Maker;
DROP TABLE Team_Game;
DROP TABLE Game;
DROP TABLE Team;
DROP TABLE Sport;
DROP TABLE Post;
DROP TABLE Answer;
DROP TABLE Followed_Star_User;  
DROP TABLE Star_User;
DROP TABLE Guest_User;
DROP TABLE User;
*/


/*DROP TABLE User;*/
CREATE TABLE User 
				(User_Id int not null primary key,
                  Firstname varchar(20),
                  Lastname  varchar(20),
                  Username varchar(20),
                  Password varchar(20),
                  Birthday date,
                  Bank_Account varchar(20),
                  Email varchar(20),
                  Points int check (Points>=0)
                  );
               
               
/*DROP TABLE Guest_User;*/
Create Table Guest_User 
						(User_Id int not null,
                        Register_Date date,
                        Status boolean,
                        CONSTRAINT PKGuestUser PRIMARY KEY (User_Id),
                        CONSTRAINT FKGuestUserS1 FOREIGN KEY (User_Id) REFERENCES User(User_Id)
					on delete cascade
                        );

/*DROP TABLE Star_User;*/
Create Table Star_User 
						( User_Id int not null,
                        Price DECIMAL(13,2) check (Price>=0),
                        CONSTRAINT PKStarUser PRIMARY KEY (User_Id),
                        CONSTRAINT FKStarUser FOREIGN KEY (User_Id) REFERENCES User(User_Id)
					on delete cascade
                        );

/*DROP TABLE Followed_Star_User;*/                        
Create Table Followed_Star_User (User_Id int not null,
								Star_User_Id int not null,
                                CONSTRAINT PKFollowed_Star_User PRIMARY KEY (User_Id,Star_User_Id),
                        CONSTRAINT FKFollowed_Star_User1 FOREIGN KEY (User_Id) REFERENCES User(User_Id)
					on delete cascade,
							CONSTRAINT FKFollowed_Star_User2 FOREIGN KEY (Star_User_Id) REFERENCES Star_User(User_Id)
					on delete cascade	
                );
              
/*DROP TABLE Answer;*/               
Create Table Answer( Answer_Id int not null primary key,
					Date date,
                    User_Id int,
                    Upvote int check (Upvote>=0),
                    Downvote int check (Downvote>=0),
                    Is_Solution boolean,
                    CONSTRAINT FKAnswer1 FOREIGN KEY (User_Id) REFERENCES User(User_Id)
					on delete cascade
					);
                    
/*DROP TABLE Post;*/                     
Create Table Post (Post_Id int not null primary key,
					Text text,
                    User_Id int,
                    Date date,
                    Answer_Id int,
                    Upvote int check (Upvote>=0),
                    Downvote int check (Downvote>=0),
                    
                    CONSTRAINT FKPost1 FOREIGN KEY (Answer_Id) REFERENCES Answer(Answer_Id) on delete cascade,
					CONSTRAINT FKPost2 FOREIGN KEY (User_Id) REFERENCES User(User_Id)
					on delete cascade);
                    
 /*DROP TABLE Sport;*/                    
Create Table Sport ( Sport_Id int not null primary key,
					Name varchar(30),
                    Type_Of_Result int
					);

/*DROP TABLE Team;*/ 
Create Table Team (Team_Id int not null primary key,
					Name varchar(30),
                    Sport_Id int,
                    Playing_Field varchar(30),
                    Sports_Club varchar(30),
                    CONSTRAINT FKTeam1 FOREIGN KEY (Sport_Id) REFERENCES Sport(Sport_Id) on delete cascade
                    );

/*DROP TABLE Game;*/ 
Create Table Game
			(Game_Id int not null primary key,
            Date_Time datetime,
            Playing_Field varchar(80),
            Home_Team varchar(80),
            Visiting_Team varchar(80));
 
/*DROP TABLE Team_Game;*/  
Create Table Team_Game
			(Team_Id INT NOT NULL,
			 Game_Id INT NOT NULL,
			 CONSTRAINT PK_Team_Game PRIMARY KEY (Team_Id,Game_Id),
             CONSTRAINT FK_Team_Game_1 foreign key (Team_Id) References Team(Team_Id)
             on delete cascade,
             CONSTRAINT FK_Team_Game_2 foreign key (Game_Id) References Game(Game_Id)
             on delete cascade);
 
 /*DROP TABLE Book_Maker;*/              
Create Table Book_Maker
			(Book_Maker_Id int not null primary key,
             SSN int,
             Name_Of_Book_Maker varchar(80),
             Enterprise_Name varchar(80),
             Country varchar(80),
             Commission DECIMAL(13,2));
 
 /*DROP TABLE Bet;*/            
Create Table Bet
			(Bet_Id int not null primary key,
             Rate DECIMAL(13,2),
             Game_Id int,
             Book_Maker_Id int,
             CONSTRAINT FK_Bet_1 foreign key (Game_Id) References Game(Game_Id)
             on delete cascade,
			 CONSTRAINT FK_Bet_2 foreign key (Book_Maker_Id) References Book_Maker(Book_Maker_Id)
             on delete cascade);

/*DROP TABLE Sure_Bet;*/ 		
Create Table Sure_Bet
			(Sure_Bet_Id int not null primary key);
            
/*DROP TABLE Sure_Bet_Bets;*/ 		
Create Table Sure_Bet_Bets
			(Sure_Bet_Id int not null,
			 Bet_Id int not null,
             Amount_In_Bet DECIMAL(13,2),
             CONSTRAINT PK_Sure_Bet_Bets PRIMARY KEY (Sure_Bet_Id,Bet_Id),
             CONSTRAINT FK_Sure_Bet_Bets_1 foreign key (Sure_Bet_Id) References Sure_Bet(Sure_Bet_Id)
             on delete cascade,
             CONSTRAINT FK_Sure_Bet_Bets_2 foreign key (Bet_Id) References Bet(Bet_Id)
             on delete cascade);



/*DROP TABLE Suggested_Sure_Bet;*/             
Create Table Suggested_Sure_Bet
			(Suggested_Sure_Bet_Id int not null primary key,
             Content text,
             Date_Time datetime,
             Sure_Bet_Id int,
             Star_User_Id int,
             CONSTRAINT FK_Suggested_Sure_Bet_1 foreign key (Sure_Bet_Id) References Sure_Bet(Sure_Bet_Id)
             on delete cascade,
             CONSTRAINT FK_Suggested_Sure_Bet_2 foreign key (Star_User_Id) References Star_User(User_Id)
             on delete cascade);

/*DROP TABLE Suggested_Sure_Bet_Book_Maker;*/ 		
Create Table Suggested_Sure_Bet_Book_Maker
			(Suggested_Sure_Bet_Id int not null,
             Book_Maker_Id int not null,
             Amount DECIMAL(13,2),
			 CONSTRAINT PK_Suggested_Sure_Bet_Book_Maker PRIMARY KEY (Suggested_Sure_Bet_Id,Book_Maker_Id),
             CONSTRAINT FK_Suggested_Sure_Bet_Book_Maker_1 foreign key (Suggested_Sure_Bet_Id) References Suggested_Sure_Bet(Suggested_Sure_Bet_Id)
             on delete cascade,
             CONSTRAINT FK_Suggested_Sure_Bet_Book_Maker_2 foreign key (Book_Maker_Id) References Book_Maker(Book_Maker_Id)
             on delete cascade);