CREATE TABLE users (
	username VARCHAR(50) NOT NULL PRIMARY KEY,
	password VARCHAR(80) NOT NULL,
	enabled BOOLEAN NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE authorities (
	username VARCHAR(50) NOT NULL,
	authority VARCHAR(50) NOT NULL,
	CONSTRAINT fk_authorities_users FOREIGN KEY(username) REFERENCES users(username)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;