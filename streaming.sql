CREATE TABLE Film (
    id_film SERIAL PRIMARY KEY,
    title_film VARCHAR(60),
    actors_film VARCHAR(50),
    film_maker VARCHAR(50),
    duration INT,
    release_year DATE
);

CREATE TABLE Actors (
    id_actors SERIAL PRIMARY KEY,
    name_actor VARCHAR(50),
    first_name_actor VARCHAR(50),
    role VARCHAR(50),
    birth_date DATE
);

CREATE TABLE Film_maker (
    id_film_maker SERIAL PRIMARY KEY,
    name_film_maker VARCHAR(50),
    first_name_film_maker VARCHAR(50),
    id_film INT NOT NULL,
    FOREIGN KEY (id_film) REFERENCES Film (id_film)
);

CREATE TABLE Users (
    id_user SERIAL PRIMARY KEY,
    name_user VARCHAR(50),
    first_name_user VARCHAR(50),
    email_user VARCHAR(50),
    password_user VARCHAR(50),
    role_user VARCHAR(50),
    favorite_film VARCHAR(50)
);

CREATE TABLE Joue_dans (
    id_film INT,
    id_actors INT,
    PRIMARY KEY (id_film, id_actors),
    FOREIGN KEY (id_film) REFERENCES Film (id_film),
    FOREIGN KEY (id_actors) REFERENCES Actors (id_actors)
);

CREATE TABLE A_regarde (
    id_film INT,
    id_user INT,
    PRIMARY KEY (id_film, id_user),
    FOREIGN KEY (id_film) REFERENCES Film (id_film),
    FOREIGN KEY (id_user) REFERENCES Users (id_user)
);


INSERT INTO Film_maker (name_film_maker, first_name_film_maker)
VALUES ('Almodóvar', 'Pedro'),
       ('Tarantino', 'Quentin'),
       ('Eastwood', 'Clint');

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



