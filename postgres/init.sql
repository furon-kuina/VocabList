-- CREATE USER root;
CREATE DATABASE vocablist;
-- GRANT ALL PRIVILEGES ON DATABASE vocablist TO root;
\c root;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE categories (
  id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  -- updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
  FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE words (
  id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,
  category_id INT NOT NULL,
  word VARCHAR(255) NOT NULL,
  description TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  -- updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (category_id) REFERENCES categories(id)
);

INSERT INTO users (name) VALUES('user1');
INSERT INTO users (name) VALUES('user2');
INSERT INTO users (name) VALUES('user3');

INSERT INTO categories (user_id, name) VALUES(1, 'English');
INSERT INTO categories (user_id, name) VALUES(1, '日本語');
INSERT INTO categories (user_id, name) VALUES(2, 'English');
INSERT INTO categories (user_id, name) VALUES(2, '日本語');
INSERT INTO categories (user_id, name) VALUES(3, 'English');
INSERT INTO categories (user_id, name) VALUES(3, '日本語');

INSERT INTO words (user_id, category_id, word, description) 
VALUES(1, 1, 'happy', 'state of being happy');
INSERT INTO words (user_id, category_id, word, description) 
VALUES(1, 1, 'Nanachi', 'the cutest creature in the world
ふわふわのぬいぐるみ、
成れ果て、
mitty-lover,
');
INSERT INTO words (user_id, category_id, word, description)
VALUES(1, 1, '古往今来', '昔から今まで、長い時間');
INSERT INTO words (user_id, category_id, word, description) 
VALUES(1, 2, 'happy', 'state of being happy');
INSERT INTO words (user_id, category_id, word, description) 
VALUES(1, 2, 'Nanachi', 'the cutest creature in the world
ふわふわのぬいぐるみ、
成れ果て、
mitty-lover,
');
INSERT INTO words (user_id, category_id, word, description)
VALUES(1, 2, '古往今来', '昔から今まで、長い時間');
INSERT INTO words (user_id, category_id, word, description) 
VALUES(1, 3, 'happy', 'state of being happy');
INSERT INTO words (user_id, category_id, word, description) 
VALUES(1, 3, 'Nanachi', 'the cutest creature in the world
ふわふわのぬいぐるみ、
成れ果て、
mitty-lover,
');
INSERT INTO words (user_id, category_id, word, description)
VALUES(1, 3, '古往今来', '昔から今まで、長い時間');

INSERT INTO words (user_id, category_id, word, description) 
VALUES(2, 1, 'happy', 'state of being happy');
INSERT INTO words (user_id, category_id, word, description) 
VALUES(2, 1, 'Nanachi', 'the cutest creature in the world
ふわふわのぬいぐるみ、
成れ果て、
mitty-lover,
');
INSERT INTO words (user_id, category_id, word, description)
VALUES(2, 1, '古往今来', '昔から今まで、長い時間');
INSERT INTO words (user_id, category_id, word, description) 
VALUES(2, 2, 'happy', 'state of being happy');
INSERT INTO words (user_id, category_id, word, description) 
VALUES(2, 2, 'Nanachi', 'the cutest creature in the world
ふわふわのぬいぐるみ、
成れ果て、
mitty-lover,
');
INSERT INTO words (user_id, category_id, word, description)
VALUES(2, 2, '古往今来', '昔から今まで、長い時間');
INSERT INTO words (user_id, category_id, word, description) 
VALUES(2, 3, 'happy', 'state of being happy');
INSERT INTO words (user_id, category_id, word, description) 
VALUES(2, 3, 'Nanachi', 'the cutest creature in the world
ふわふわのぬいぐるみ、
成れ果て、
mitty-lover,
');
INSERT INTO words (user_id, category_id, word, description)
VALUES(2, 3, '古往今来', '昔から今まで、長い時間');

INSERT INTO words (user_id, category_id, word, description) 
VALUES(3, 1, 'happy', 'state of being happy');
INSERT INTO words (user_id, category_id, word, description) 
VALUES(3, 1, 'Nanachi', 'the cutest creature in the world
ふわふわのぬいぐるみ、
成れ果て、
mitty-lover,
');
INSERT INTO words (user_id, category_id, word, description)
VALUES(3, 1, '古往今来', '昔から今まで、長い時間');
INSERT INTO words (user_id, category_id, word, description) 
VALUES(3, 2, 'happy', 'state of being happy');
INSERT INTO words (user_id, category_id, word, description) 
VALUES(3, 2, 'Nanachi', 'the cutest creature in the world
ふわふわのぬいぐるみ、
成れ果て、
mitty-lover,
');
INSERT INTO words (user_id, category_id, word, description)
VALUES(3, 2, '古往今来', '昔から今まで、長い時間');
INSERT INTO words (user_id, category_id, word, description) 
VALUES(3, 3, 'happy', 'state of being happy');
INSERT INTO words (user_id, category_id, word, description) 
VALUES(3, 3, 'Nanachi', 'the cutest creature in the world
ふわふわのぬいぐるみ、
成れ果て、
mitty-lover,
');
INSERT INTO words (user_id, category_id, word, description)
VALUES(3, 3, '古往今来', '昔から今まで、長い時間');