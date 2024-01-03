ALTER TABLE Person ADD COLUMN email varchar(100) UNIQUE;

CREATE TABLE Item(
	id int PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
	person_id int REFERENCES Person(id) ON DELETE SET NULL,
	item_name varchar(100) NOT NULL
);

INSERT INTO Item(person_id, item_name) VALUES(14, 'Airpods');
INSERT INTO Item(person_id, item_name) VALUES(14, 'Playstation');
INSERT INTO Item(person_id, item_name) VALUES(14, 'TV');

ALTER TABLE Person ADD COLUMN date_of_birth DATE;
ALTER TABLE Person ADD COLUMN created_at TIMESTAMP;