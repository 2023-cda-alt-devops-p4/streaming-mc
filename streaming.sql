CREATE TABLE Film(
   id_film INT,
   title_film VARCHAR(60),
   actors_film VARCHAR(50),
   film_maker VARCHAR(50),
   duration INT,
   release_date DATE,
   PRIMARY KEY(id_film)
);

CREATE TABLE Actor(
   id_actor INT,
   name_actor VARCHAR(50),
   firstName_actor VARCHAR(50),
   role_actor VARCHAR(50),
   birthDate DATE,
   PRIMARY KEY(id_actor)
);

CREATE TABLE diretor(
   id_diretor INT,
   name_diretor VARCHAR(50),
   firstName_diretor VARCHAR(50),
   id_film INT NOT NULL,
   PRIMARY KEY(id_diretor),
   FOREIGN KEY(id_film) REFERENCES Film(id_film)
);

CREATE TABLE Users(
   Id_user INT,
   Name_user VARCHAR(50),
   FirstName_user VARCHAR(50),
   Email_user VARCHAR(50),
   Password_user VARCHAR(50),
   Role_user VARCHAR(50),
   Favorite_film VARCHAR(50),
   PRIMARY KEY(Id_user)
);

CREATE TABLE Archive(
   id_archive INT,
   Date_archive DATE,
   Update_archive DATE,
   odl_value VARCHAR(50),
   new_value VARCHAR(50),
   Id_user INT NOT NULL,
   PRIMARY KEY(id_archive),
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


-- Almodóvar
INSERT INTO Film (title_film, actors_film, film_maker, duration, release_year)
VALUES  ('Parle avec elle', 'Javier Cámara, Darío Grandinetti, Leonor Watling', 'Almodóvar', 112, '2002-01-01'),
        ('Pulp Fiction', 'John Travolta, Samuel L. Jackson, Uma Thurman', 'Tarantino', 154, '1994-01-01'),
        ('Impitoyable', 'Clint Eastwood, Gene Hackman, Morgan Freeman', 'Eastwood', 131, '1992-01-01');


-- utilisateur
INSERT INTO Users (name_user, first_name_user, email_user, password_user, role_user, favorite_film)
VALUES  ('Smith', 'John', 'john.smith@email.com', 'motdepasse1', 'Utilisateur', 'Parle avec elle'),
        ('Johnson', 'Sarah', 'sarah.johnson@email.com', 'motdepasse2', 'Utilisateur', 'Pulp Fiction'),
        ('Davis', 'Michael', 'michael.davis@email.com', 'motdepasse3', 'Utilisateur', 'Impitoyable'),
        ('Brown', 'Lisa', 'lisa.brown@email.com', 'motdepasse4', 'Utilisateur', 'Parle avec elle'),
        ('Garcia', 'David', 'david.garcia@email.com', 'motdepasse5', 'Utilisateur', 'Pulp Fiction'),
        ('Martinez', 'Maria', 'maria.martinez@email.com', 'motdepasse6', 'Utilisateur', 'Impitoyable'),
        ('Miller', 'James', 'james.miller@email.com', 'motdepasse7', 'Utilisateur', 'Parle avec elle'),
        ('Taylor', 'Emily', 'emily.taylor@email.com', 'motdepasse8', 'Utilisateur', 'Pulp Fiction'),
        ('Anderson', 'Robert', 'robert.anderson@email.com', 'motdepasse9', 'Utilisateur', 'Impitoyable'),
        ('Thomas', 'Jennifer', 'jennifer.thomas@email.com', 'motdepasse10', 'Utilisateur', 'Parle avec elle');


INSERT INTO Actors (name_actor, first_name_actor, role, birth_date)
VALUES  ('Cámara', 'Javier', 'Benigno', '1970-01-01'),
        ('Grandinetti', 'Darío', 'Marco', '1969-02-15'),
        ('Watling', 'Leonor', 'Alicia', '1976-12-28'),
        ('Travolta', 'John', 'Vincent Vega', '1954-02-18'),
        ('Jackson', 'Samuel L.', 'Jules Winnfield', '1948-12-21'),
        ('Thurman', 'Uma', 'Mia Wallace', '1970-04-29'),
        ('Eastwood', 'Clint', 'Bill Munny', '1930-05-31'),
        ('Hackman', 'Gene', 'Little Bill Daggett', '1930-01-30'),
        ('Freeman', 'Morgan', 'Ned Logan', '1937-06-01');



