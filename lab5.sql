DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users (
    username TEXT NOT NULL PRIMARY KEY,
    password TEXT NOT NULL,
    creation_date DATE DEFAULT CURRENT_DATE
);

INSERT INTO users (username, password) VALUES ('Michelle', 'test_pw1');
INSERT INTO users (username, password) VALUES ('Jasmine', 'test_pw2');

DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
    author TEXT NOT NULL PRIMARY KEY,
    content TEXT NOT NULL,
    creation_date DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (author) REFERENCES users(username)
);

INSERT INTO posts (author, content) VALUES ('Michelle', 'test_post_1');
INSERT INTO posts (author, content) VALUES ('Jasmine', 'test_post_2');
