DROP TABLE IF EXISTS s_users;
CREATE TABLE s_users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    active BOOLEAN
) Engine=InnoDB;


INSERT INTO s_users (username, password, active) VALUES ('admin', '123', true);
INSERT INTO s_users (username, password, active) VALUES ('user', '123', true);