1. Utwórz tabelę countries z polami: country_id, country_name i  region_id. Tabela powinna być utworzona tylko wtedy, gdy nie istnieje.
CREATE TABLE IF NOT EXISTS countries (
    country_id int,
    country_name varchar(255),
    region_id int
);

2. Utwórz tabelę dup_countries będącą kopią tabeli countries (struktura i dane)
CREATE TABLE dup_countries AS 
SELECT * FROM countries;

3. Z tabeli dup_countries usuń pole region_id
ALTER TABLE dup_countries
DROP region_id

4. Pole country_id powinno być kluczem podstawowym z autoinkrementacją
ALTER TABLE countries
MODIFY country_id int auto_increment PRIMARY KEY; 

ALTER TABLE dup_countries
MODIFY country_id int auto_increment PRIMARY KEY; 

5. Zmień nazwę pola country_id na id_country
ALTER TABLE countries
change country_id id_country int auto_increment;

ALTER TABLE dup_countries
change country_id id_country int auto_increment;

6. Pole country_name nie powinno być puste - dodaj odpowiedni warunek
ALTER TABLE countries
MODIFY country_name varchar(255) NOT NULL;

ALTER TABLE dup_countries
MODIFY country_name varchar(255) NOT NULL;

7. Zmodyfikuj tabelę countries tak, aby tylko wybrane cztery kraje (wymyśl jakie) będą mogły byc wpisane do tej tabeli
ALTER TABLE countries
ADD Constraint ch_country
CHECK(country_name IN ('Poland','Germany','France','Italy'));

8. Usuń tabelę dup_countries
DROP TABLE dup_countries;

9. Utwórz tabelę jobs zawierajacą pola id_job, job_title, min_salary, max_salary, dodaj regułę, która sprawi, że max_salary nie przekroczy limitu 25000
CREATE TABLE jobs (
    id_job int,
    job_title varchar(255),
    min_salary dec(10,2),
    max_salary dec(10,2),
    Constraint ch_max_salary
    CHECK (max_salary <= 25000)
);

10. Do tabeli jobs dodaj warunek pilnujący, aby wartości w polu job_title się nie powtarzały
ALTER TABLE jobs 
MODIFY job_title varchar(255) unique;

ALTER TABLE jobs
ADD CONSTRAINT unique_job_title
UNIQUE (job_title);

11. Do tabeli jobs dodaj wartość domyślną na polu min_salary 8000 oraz wartość domyślną NULL na polu max_salary
ALTER TABLE jobs
MODIFY min_salary dec(10,2) DEFAULT 8000;

ALTER TABLE jobs
MODIFY max_salary dec(10,2) DEFAULT NULL;

12. Utwórz tabelę job_histry z polami: employee_id, start_date, end_date, job_id  oraz department_id . Określ klucz podstawowy (zakładamy, że pracownik nie pracuje jednocześnie na więcej niż jednym stanowisku) 
CREATE TABLE job_histry (
    employee_id int,
    start_date DATE,
    end_date DATE,
    job_id int,
    department_id int,
    PRIMARY KEY (employee_id, start_date)
);

13 zmodyfikuj tabelę job_histry przesuwając pole job_id na początek tabeli
ALTER TABLE job_histry
MODIFY job_id int FIRST;

14. Do tabeli job_histry dodaj klucz obcy na polu job_id
ALTER TABLE job_histry
ADD FOREIGN KEY (job_id) REFERENCES jobs(id_job);

15. Do tabeli job_histry dodaj regułę, która będzie pilnowała wprowadzania daty w formacie rrrr-mm-dd
ALTER TABLE job_histry
ADD Constraint ch_date
CHECK (
    start_date = DATE_FORMAT(start_date, '%Y-%m-%d') AND
    end_date = DATE_FORMAT(end_date, '%Y-%m-%d')
);