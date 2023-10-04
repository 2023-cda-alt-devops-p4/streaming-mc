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



