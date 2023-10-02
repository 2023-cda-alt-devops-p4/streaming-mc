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


INSERT INTO Film_maker (name_filmMaker, first_name_filmMaker)
VALUES ('Almodóvar', 'Pedro'),
       ('Tarantino', 'Quentin'),
       ('Eastwood', 'Clint');