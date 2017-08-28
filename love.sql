
todoList=# CREATE TABLE todo (
todoList(# id SERIAL PRIMARY KEY,
todoList(# title VARCHAR(255) NOT NULL,
todoList(# details text NULL,
todoList(# priority INTEGER NOT NULL DEFAULT 1,
todoList(# created_at TIMESTAMP NOT NULL,
todoList(# completed_at TIMESTAMP NULL);
todoList=# \dt
todoList=# INSERT INTO todo (title, details, priority, created_at) VALUES ('Workout', 'Workout for 2 hours a day',7,'2017-08-08 04:29:01'),('Study', 'Start homework by 6pm',2,'2017-08-08 04:30:01'),('Call', 'Call my mom',3,'2017-08-08 04:30:01'),('Code', 'Code for life',1,'2017-08-08 04:35:01'),('Wash', 'Wash before 2pm',4,'2017-08-08 04:20:01');
todoList=# SELECT * FROM todo;

todoList=# INSERT INTO todo (title, details, priority, created_at, completed_at ) VALUES ('Smile', 'Be happy',2,'2017-08-08 04:35:01','2017-08-08 04:40:00');

todoList=# SELECT * FROM todo;


todoList=# SELECT title FROM todo WHERE completed_at IS NULL;


todoList=# SELECT title FROM todo ORDER BY priority DESC LIMIT 6;

todoList=# UPDATE todo  SET  completed_at = '2017-08-08 05:35:01' WHERE id = '7';

todoList=# UPDATE todo  SET  completed_at = '2017-08-08 05:35:01' WHERE id = '6';

todoList=# \dt


todoList=# SELECT * FROM todo;


todoList=# DELETE FROM todo WHERE completed_at IS NOT NULL;

todoList=# \q
