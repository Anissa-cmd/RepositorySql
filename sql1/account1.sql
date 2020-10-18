SELECT * FROM user;
SELECT * FROM post;
SELECT * FROM comment;

SELECT u.first_name, u.last_name, p.username
FROM user u
INNER JOIN post p ON u.user_id = p.post_id;

SELECT u.first_name, u.last_name, u.phone_number, p.geolocation, p.create_on
FROM user u
INNER JOIN post p ON u.user_id = p.post_id;

SELECT u.first_name, u.last_name, p.description, p.create_on, c.comment
FROM user u
INNER JOIN post p ON u.user_id = p.post_id
INNER JOIN comment c ON u.user_id = c.comment_id;