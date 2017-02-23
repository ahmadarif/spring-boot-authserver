DROP TABLE IF EXISTS s_users;
CREATE TABLE s_users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    active BOOLEAN
) Engine=InnoDB;

DROP TABLE IF EXISTS s_permissions;
CREATE TABLE s_permissions (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    id_user VARCHAR(100) NOT NULL REFERENCES s_users(id),
    user_role VARCHAR(255) NOT NULL
) Engine=InnoDB;

DROP TABLE IF EXISTS oauth_client_details;
CREATE TABLE oauth_client_details (
  client_id VARCHAR(256) PRIMARY KEY,
  resource_ids VARCHAR(256),
  client_secret VARCHAR(256),
  scope VARCHAR(256),
  authorized_grant_types VARCHAR(256),
  web_server_redirect_uri VARCHAR(256),
  authorities VARCHAR(256),
  access_token_validity INTEGER,
  refresh_token_validity INTEGER,
  additional_information VARCHAR(4096),
  autoapprove BOOLEAN
);