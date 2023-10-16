CREATE TABLE Film(
   id_film SERIAL PRIMARY KEY,
   title_film VARCHAR(60),
   actors_film VARCHAR(50),
   film_maker VARCHAR(50),
   duration INT,
   release_date DATE
);

CREATE TABLE Actor(
   id_actor SERIAL PRIMARY KEY,
   name_actor VARCHAR(50),
   firstName_actor VARCHAR(50),
   role_actor VARCHAR(50),
   birthDate DATE
);

CREATE TABLE diretor(
   id_diretor SERIAL PRIMARY KEY,
   name_diretor VARCHAR(50),
   firstName_diretor VARCHAR(50),
   id_film INT,
   FOREIGN KEY(id_film) REFERENCES Film(id_film)
);

CREATE TABLE Users(
   Id_user SERIAL PRIMARY KEY,
   Name_user VARCHAR(50),
   FirstName_user VARCHAR(50),
   Email_user VARCHAR(50),
   Password_user VARCHAR(50),
   Role_user VARCHAR(50),
   Favorite_film VARCHAR(50)
);

CREATE TABLE Archive(
   id_archive SERIAL PRIMARY KEY,
   Date_archive DATE,
   Update_archive DATE,
   odl_value VARCHAR(50),
   new_value VARCHAR(50),
   Id_user INT,
   FOREIGN KEY(Id_user) REFERENCES Users(Id_user)
);

CREATE TABLE Joue_dans(
   id_film INT,
   id_actor INT,
   PRIMARY KEY(id_film, id_actor),
   FOREIGN KEY(id_film) REFERENCES Film(id_film),
   FOREIGN KEY(id_actor) REFERENCES Actor(id_actor)
);

CREATE TABLE A_regardé(
   id_film INT,
   Id_user INT,
   PRIMARY KEY(id_film, Id_user),
   FOREIGN KEY(id_film) REFERENCES Film(id_film),
   FOREIGN KEY(Id_user) REFERENCES Users(Id_user)
);
