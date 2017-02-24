DROP TABLE IF EXISTS s_permissions;
CREATE TABLE s_permissions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_user VARCHAR(100) NOT NULL REFERENCES s_users(id),
    user_role VARCHAR(255) NOT NULL
) Engine=InnoDB;


INSERT INTO s_permissions (id_user, user_role) VALUES (1, 'ROLE_ADMIN');
INSERT INTO s_permissions (id_user, user_role) VALUES (1, 'ROLE_USER');
INSERT INTO s_permissions (id_user, user_role) VALUES (2, 'ROLE_USER');