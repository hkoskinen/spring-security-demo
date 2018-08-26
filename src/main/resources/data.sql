INSERT INTO users (username, password, enabled) VALUES ('gaben', '{bcrypt}$2a$10$l7.izHqM6CwokdA1xh50mu31L0mWs8zPYU7WDUpTGXdEo3H/jNZ52', true);
INSERT INTO authorities (username, authority) VALUES ('gaben', 'ROLE_USER');
INSERT INTO authorities (username, authority) VALUES ('gaben', 'ROLE_ADMIN');

INSERT INTO users (username, password, enabled) VALUES ('sarah', '{bcrypt}$2a$10$l7.izHqM6CwokdA1xh50mu31L0mWs8zPYU7WDUpTGXdEo3H/jNZ52', true);
INSERT INTO authorities (username, authority) VALUES ('sarah', 'ROLE_USER');