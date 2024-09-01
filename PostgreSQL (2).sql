create table countries(
  id_country serial primary key,
  name varchar(50) not null
  );

create table priorities(
  id_priority serial primary key,
  type_name varchar(50) not null
  );

create table contact_request(
  id_email varchar(50) PRIMARY KEY,
  id_country INT not null,
  id_priority INT not null,
  name varchar(50),
  detail text,
  physical_address VARCHAR(100),
    FOREIGN KEY (id_country) REFERENCES countries(id_country),
    FOREIGN KEY (id_priority) REFERENCES priorities(id_priority)
);
 
insert into countries (name) values ('peru') , ('colombia'),('panama'),('venezuela'),('mexico');

select * from countries;

INSERT INTO priorities (type_name) VALUES ('Alto'), ('Medio'), ('Bajo');

select * from priorities;

INSERT INTO contact_request (id_email, id_country, id_priority, name, detail, physical_address)
VALUES ('lacasa@hotmail.com', 1, 1, 'andres castillo', 'solicitud de empleo', 'El country club'),
       ('caramelos@gmail.com', 2,2, 'charlie mata', 'la visa del otro lado', 'bogota'),
       ('cianuro@gmail.com', 3,3, 'yorman peña', 'grafica nueva', 'costa rica');
       
       
SELECT * FROM contact_request;       
       


