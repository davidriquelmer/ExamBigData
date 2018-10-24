--Pregunta1
select e.regionEducativa, e.municipio, count(*) from students as s, escuelas as e where s.Sid = e.Escuela_ID group by e.regionEducativa, e.municipio;
--Pregunta2
select e.municipio, s.nivelEscuela, count(*) from students as s, escuelas as e where s.sid = e.Escuela_ID group by e.municipio, s.nivelEscuela;
--Pregunta3
select count(*) from students as s, escuelas as e where e.escuela_ID = s.sid and e.municipio = "Ponce" and e.nivel = "Superior" and s.sexo = "F";
--Pregunta4
select e.regionEducativa, e.distritoEscolar , e.municipio, count(*) from students as s, escuelas as e where s.sid = e.escuela_ID and s.sexo = "M" group by e.regionEducativa, e.distritoEscolar, e.municipio;