
INSERT INTO Film (title_film, actors_film, film_maker, duration, release_date)
VALUES  ('Parle avec elle', 'Javier Cámara, Darío Grandinetti, Leonor Watling', 'Almodóvar', 112, '2002-01-01'),
        ('Tout sur ma mère', 'Cecilia Roth, Marisa Paredes, Penélope Cruz', 'Almodóvar', 101, '1999-04-16'),
        ('La piel que habito', 'Antonio Banderas, Elena Anaya', 'Almodóvar', 120, '2011-08-17'),
        ('Volver', 'Penélope Cruz, Carmen Maura', 'Almodóvar', 121, '2006-03-17'),
        ('Femmes au bord de la crise de nerfs', 'Carmen Maura, Antonio Banderas', 'Almodóvar', 88, '1988-11-11'),
        ('Pulp Fiction', 'John Travolta, Samuel L. Jackson, Uma Thurman', 'Tarantino', 154, '1994-01-01'),
        ('Impitoyable', 'Clint Eastwood, Gene Hackman, Morgan Freeman', 'Eastwood', 131, '1992-01-01');

INSERT INTO Users (Name_user, FirstName_user, Email_user, Password_user, role_user, favorite_film)
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


INSERT INTO Actor (name_actor, firstName_actor, role_actor, birthDate)
VALUES  ('Cámara', 'Javier', 'Benigno', '1970-01-01'),
        ('Grandinetti', 'Darío', 'Marco', '1969-02-15'),
        ('Watling', 'Leonor', 'Alicia', '1976-12-28'),
        ('Travolta', 'John', 'Vincent Vega', '1954-02-18'),
        ('Jackson', 'Samuel L.', 'Jules Winnfield', '1948-12-21'),
        ('Thurman', 'Uma', 'Mia Wallace', '1970-04-29'),
        ('Eastwood', 'Clint', 'Bill Munny', '1930-05-31'),
        ('Hackman', 'Gene', 'Little Bill Daggett', '1930-01-30'),
        ('Freeman', 'Morgan', 'Ned Logan', '1937-06-01');

INSERT INTO diretor (name_diretor, firstName_diretor)
VALUES ('Almodóvar', 'Pedro'),
       ('Tarantino', 'Quentin'),
       ('Eastwood', 'Clint');




