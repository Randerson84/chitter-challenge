TRUNCATE TABLE posts, users RESTART IDENTITY;

INSERT INTO users (email, name, username, password) VALUES ('ray@makers.com', 'Raymond Anderson', 'Randerson', 'password123');
INSERT INTO users (email, name, username, password) VALUES ('jack@makers.com', 'Jack Thacker', 'Jthacker', 'password456');

INSERT INTO posts (message, time_of_post, user_id) VALUES ('Working on chitter', '2023-03-29 10:05:00', '2');
INSERT INTO posts (message, time_of_post, user_id) VALUES ('Working on web applications', '2023-03-30 10:15:00', '1');


