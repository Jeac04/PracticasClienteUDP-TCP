CREATE TABLE alumno(
  idalum serial,
  nombres varchar(255) NOT NULL,
  apellidos varchar(255) NOT NULL,
  PRIMARY KEY (idalum)
);

create index id_alum on ALUMNO(idalum);

INSERT INTO alumno(nombres,apellidos) VALUES ('LUIS ANTONIO','ALVAREZ OVAL');
INSERT INTO alumno(nombres,apellidos) VALUES ('JUAN RO','MALDONADO PEREZ');

-- -----------------------------------------------------------------------------------------
Create table maestro(
  idmaes serial,
  nombres varchar(255) NOT NULL,
  apellidos varchar(255) NOT NULL,
  PRIMARY KEY (idmaes)
);

create index id_mtro on maestro(idmaes);

INSERT INTO maestro(nombres,apellidos) VALUES ('VANESSA','BENAVIDES GARCIA');
INSERT INTO maestro(nombres,apellidos) VALUES ('PAOLA','SANCHEZ');

-- -----------------------------------------------------------------------------------------
Create table materia(
  idmat serial,
  nombres varchar(255) NOT NULL,
  grado integer not null,
  PRIMARY KEY (idmat)
);

create index id_mat on materia(idmat);

INSERT INTO materia(nombres,grado) VALUES ('MATEMATICAS',2);
INSERT INTO materia(nombres,grado) VALUES ('GEOGRAFIA',2);

-- -----------------------------------------------------------------------------------------
Create table mat_alum_prof(
  idcns serial,
  idalum int NOT NULL,
  idmat int NOT NULL,
  idmaes int NOT NULL,
  fec_alta tiemstamp default current_timestamp,
  foreign key(idalum) references alumno(idalum),
  foreign key(idmat) references materia(idmat),
  foreign key(idmaes) references maestro(idmaes),
  PRIMARY KEY (idcns)
);

create index id_cns on mat_alum_prof(idcns);

INSERT INTO mat_alum_prof(idalum,idmat,idmaes) VALUES (1,1,1);
INSERT INTO mat_alum_prof(idalum,idmat,idmaes) VALUES (2,2,2);

-- -----------------------------------------------------------------------------------------
Create table login(
  idlog serial,
  usuario varchar(255) NOT NULL,
  psswrd varchar(255) not null,
  PRIMARY KEY (idlog)
);

create index id_log on login(idlog);

INSERT INTO login(usuario,psswrd) VALUES ('JUAN RO','vision1');
INSERT INTO login(usuario,psswrd) VALUES ('CLAUDIA','vision2');