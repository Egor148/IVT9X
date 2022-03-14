--
-- PostgreSQL database cluster dump
--

-- Started on 2022-03-14 09:07:34

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE "Admin";
ALTER ROLE "Admin" WITH NOSUPERUSER INHERIT CREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS CONNECTION LIMIT 1 PASSWORD 'SCRAM-SHA-256$4096:E39+UFxXkaeUUKsEHN6m8w==$ZVIQQz7n24rRT0tL3JWZoUOnej1XwaL+CT1G3TLd3xQ=:OHGab0y4H00s9AIKSqT7kJ0d6XtKKHGG2A7SLj0qQBc=' VALID UNTIL 'infinity';
CREATE ROLE "Student_1";
ALTER ROLE "Student_1" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS CONNECTION LIMIT 1 PASSWORD 'SCRAM-SHA-256$4096:Lt13duyhy5FOALX61ZkwJw==$+E8CTXsJo9UiRoXALRr7zlHMlZJoN1myQzMy1qBQ9JY=:Y3IUkIx7rhZEXrC7u/uEEo2ym+UCqQ/xX+iP0aPb14E=';
CREATE ROLE "Student_10";
ALTER ROLE "Student_10" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS CONNECTION LIMIT 1 PASSWORD 'SCRAM-SHA-256$4096:z/tfyff1Au4IQWJUG5r/oQ==$Y2ira3gcnVuNRxSyGFWL7Pp/Qf5M7U2Rc1JI0Ld6rZg=:A/GIGA+KA8C2QPn6aUK4g9sskrRV/lNl+gvntZciGUI=';
CREATE ROLE "Student_11";
ALTER ROLE "Student_11" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS CONNECTION LIMIT 1 PASSWORD 'SCRAM-SHA-256$4096:a5KTiNyMPa2RQTAivVNarg==$jqRIMQAoB9/GD9zmIFwp36EmAwGHyRoyUlyW87VM8x4=:NDej+5UZMjXHR+vldCraATnfsVI98gWghb2OnAw5JrU=';
CREATE ROLE "Student_12";
ALTER ROLE "Student_12" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS CONNECTION LIMIT 1 PASSWORD 'SCRAM-SHA-256$4096:t9dOr/iSOcMbBASx/uuDmQ==$N/9j5JH7ebcCHDfZHWiFxDv8EaoU8jEcXJX+x5FPx6Q=:bWqDCtr5rDLLaYqCWjqK96SbjLC9/1tEz1GTpCfc/xo=';
CREATE ROLE "Student_13";
ALTER ROLE "Student_13" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS CONNECTION LIMIT 1 PASSWORD 'SCRAM-SHA-256$4096:dmvldZR/NxB5RWxqnhtPWg==$ECvO6am/ABLesvaS2bpbUh0QUSbx03kjz1+RglDCurM=:r1sWEiA2TfvY+ltoP4VvjrgborOIGB06hbj5wPgB5y8=';
CREATE ROLE "Student_2";
ALTER ROLE "Student_2" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS CONNECTION LIMIT 1 PASSWORD 'SCRAM-SHA-256$4096:Vgnp4dj8fDemYJrHqHRHNg==$5wr4gEb/DDSbo2k6zwd27iQoEVgoDPzo3XWIRm2BAXY=:F6P9NC6mFDnxo2x0qLRW0aGrTweR3cXxlY5dyQciSWo=';
CREATE ROLE "Student_3";
ALTER ROLE "Student_3" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS CONNECTION LIMIT 1 PASSWORD 'SCRAM-SHA-256$4096:NMO3rFZ3fXPilSlXX2KiGg==$Jb4zpC/MAuJ8bQJC6GfgbByMYlI3moHWpKwwMmmlxbw=:8bkh26JfW+DWws5rH+WL/+wc0kcfoSoAwsjoFJcDiRs=';
CREATE ROLE "Student_4";
ALTER ROLE "Student_4" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS CONNECTION LIMIT 1 PASSWORD 'SCRAM-SHA-256$4096:aSGXFJFel0OFsg4tQIK41Q==$/WiYyt//Pqd8jk9g9wHRbZumUImrA+RRnnJMx99CigE=:NoWZKr1KEa9WvXYR6t36jQcXJtHmycdg9ZjYmTsjVDw=';
CREATE ROLE "Student_5";
ALTER ROLE "Student_5" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS CONNECTION LIMIT 1 PASSWORD 'SCRAM-SHA-256$4096:NlDt+HOfmku/5QzlAnNuOg==$iA/qg5QVB8NdIqcA7eHurhJSPM6YCqRN3a0cQzQYPiA=:9wJIJuQWz0iEzfwCcFmP4qTZnWWozKeEcSOHifPmqCE=';
CREATE ROLE "Student_6";
ALTER ROLE "Student_6" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS CONNECTION LIMIT 1 PASSWORD 'SCRAM-SHA-256$4096:Kwgl3siQfq22ZLO3DyCa5g==$7p7AAUxPCWXqRP26c7ZNqJ18SUkRuUU70zm3dudehpU=:t2hkyxv+SPeVYV8py7BjZIEYvjJmoB2Ayj4tV3b6ICU=';
CREATE ROLE "Student_7";
ALTER ROLE "Student_7" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS CONNECTION LIMIT 1 PASSWORD 'SCRAM-SHA-256$4096:0qomze45zHb1Q7zFnDd53A==$9LvW3sZNsgMdLi9tiHr0EqjxuYmxpVZFuAJekPA02BQ=:HefrSHcIm0DzqBjxD8Wni60tw4nLbl37JA8f1bihsXQ=';
CREATE ROLE "Student_8";
ALTER ROLE "Student_8" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS CONNECTION LIMIT 1 PASSWORD 'SCRAM-SHA-256$4096:63KaNF5nuFWuk19pQqLQ/Q==$/DKMng/MV1B88th7odDoOSs957TjvLCfcXrX7YVerpY=:e8J5qTrG557VJ31z6D8Ns4E2+mijLjxlmoYqUwANBfM=';
CREATE ROLE "Student_9";
ALTER ROLE "Student_9" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS CONNECTION LIMIT 1 PASSWORD 'SCRAM-SHA-256$4096:swtWS0GqdlpQ/ZfSp6Gm5Q==$9qj6cRicIOppxRWH/xSxvHTRdQKi+yr2hNxpnzZMyW0=:F0cJU6Cbb7OpQg46vTRliZ0O6EozI70gEWXsOJaRUAE=';
CREATE ROLE "Teacher_1";
ALTER ROLE "Teacher_1" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS CONNECTION LIMIT 1 PASSWORD 'SCRAM-SHA-256$4096:LJGc9m8ZDTFB4U9995etrQ==$M/wxkmywDJ/Qx1ozBAgP1760TEWWRsDTJnuFZg2Uzi4=:m2DwV+LuVht2wFJPHApd+hBR71jSTK2YYv4WiIlgx1I=' VALID UNTIL 'infinity';
CREATE ROLE "Teacher_2";
ALTER ROLE "Teacher_2" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS CONNECTION LIMIT 1 PASSWORD 'SCRAM-SHA-256$4096:yRscGgdyZE4iuC1uCVNdCg==$ZUfRUugHHm6ja0nfnABopuOz/1877+b5o6H6RkoqMtA=:kyhFqeftqEeh2eNaVGDs7aJWCiPNq3Wt9Qw+iZGaXBs=';
CREATE ROLE "Teacher_3";
ALTER ROLE "Teacher_3" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS CONNECTION LIMIT 1 PASSWORD 'SCRAM-SHA-256$4096:bvJx4wlxWJcNJv/Ax+av2Q==$+WTckpz0FC3B3JzahNymMhaxWtzNICF1b6QaRgj9Dsw=:+8Xt4TMOpQurecU7cqVrtE81TE8v8+iS09Th7gqnxME=';
CREATE ROLE "Teacher_4";
ALTER ROLE "Teacher_4" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS CONNECTION LIMIT 1 PASSWORD 'SCRAM-SHA-256$4096:BgoOHpphZZg/+d3OLMdXXA==$xOENIq5tTByLskjIl2OPFfoAM+VBRcbPbeLju3R5/F4=:Ib3Ley4Wr0rJKGWkq4+55h64ZR0xtTMWckJmjTNgt1Q=';
CREATE ROLE editor;
ALTER ROLE editor WITH NOSUPERUSER INHERIT CREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS CONNECTION LIMIT 1 PASSWORD 'SCRAM-SHA-256$4096:Kux95Qzj8l+Zi2HAcVnpyA==$Mh2DP8gTg8aqmEqlub8HCV0RtKtekD5qIWHAYcSYjR4=:Hde2VMgBL3EnVyWFzr4/8pg9QEaTqTb1+go9BGZ3WH4=' VALID UNTIL '2021-12-31 22:34:00+07';
CREATE ROLE viewers;
ALTER ROLE viewers WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS CONNECTION LIMIT 10 PASSWORD 'SCRAM-SHA-256$4096:qoQ4GrD7WDLFqCnnSweuKQ==$RoMPt6MPPrHEVXh7y6oWkISQ2rKppCM3H97He2FxCbg=:Q8EZrdGJJyBgFF7WWen7G4b19sUsj6oeOy0MqiPO+18=' VALID UNTIL '2021-12-31 22:44:00+07';


--
-- Role memberships
--

GRANT editor TO "Admin" GRANTED BY postgres;
GRANT pg_read_all_data TO editor GRANTED BY postgres;
GRANT pg_read_all_data TO viewers GRANTED BY postgres;
GRANT pg_write_all_data TO editor GRANTED BY postgres;
GRANT viewers TO "Student_1" GRANTED BY postgres;
GRANT viewers TO "Student_10" GRANTED BY postgres;
GRANT viewers TO "Student_11" GRANTED BY postgres;
GRANT viewers TO "Student_12" GRANTED BY postgres;
GRANT viewers TO "Student_13" GRANTED BY "Admin";
GRANT viewers TO "Student_2" GRANTED BY postgres;
GRANT viewers TO "Student_3" GRANTED BY postgres;
GRANT viewers TO "Student_4" GRANTED BY postgres;
GRANT viewers TO "Student_5" GRANTED BY postgres;
GRANT viewers TO "Student_6" GRANTED BY postgres;
GRANT viewers TO "Student_7" GRANTED BY postgres;
GRANT viewers TO "Student_8" GRANTED BY postgres;
GRANT viewers TO "Student_9" GRANTED BY postgres;
GRANT viewers TO "Teacher_1" GRANTED BY postgres;
GRANT viewers TO "Teacher_2" GRANTED BY postgres;
GRANT viewers TO "Teacher_3" GRANTED BY postgres;
GRANT viewers TO "Teacher_4" GRANTED BY postgres;




-- Completed on 2022-03-14 09:07:34

--
-- PostgreSQL database cluster dump complete
--

