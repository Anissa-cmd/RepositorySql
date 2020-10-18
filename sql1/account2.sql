USE account;
INSERT INTO user (user_id, first_name, last_name, birth_date, gender, email, phone_number, password, last_login)
VALUES (1, 'Julia', 'Brown', '2002-01-01', 'F', 'juliab@gmail.com', '(602)-555-1234', '**********', '2020-10-17');

INSERT INTO user (user_id, first_name, last_name, birth_date, gender, email, phone_number, password, last_login)
VALUES (1, 'Mike', 'Smith', '2000-01-01', 'M', 'mikes@gmail.com', '(602)-666-1234', '**********', '2020-10-17');

INSERT INTO post (post_id, user_id, username, description, geolocation, time_to_get_through, problem, create_on)
VALUES (1, 1, 'Christian', 'here am I', 'Phoenix', '6:00', '1', '2020-10-17');

INSERT INTO post (post_id, user_id, username, description, geolocation, time_to_get_through, problem, create_on)
VALUES (2, 2, 'Mike', 'here am I', 'Tucson', '5:00', '0', '2020-10-17');

INSERT INTO comment (comment_id, user_id, post_id, username, comment, create_on)
VALUES (1, 2, 1, 'Mike', 'Greeting', '2020-01-20');
INSERT INTO comment (comment_id, user_id, post_id, username, comment, create_on)
VALUES (2, 1, 2, 'Julia', 'Hello world', '2020-01-20');