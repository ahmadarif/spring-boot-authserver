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
  autoapprove VARCHAR(256)
);


INSERT INTO oauth_client_details
(client_id, client_secret, resource_ids, scope, authorized_grant_types, authorities) VALUES
('clientauthcode', '123', 'belajar', 'read,write', 'authorization_code, refresh_token', 'CLIENT');

INSERT INTO oauth_client_details
(client_id, client_secret, resource_ids, scope, authorized_grant_types) VALUES
('clientcred', '123', 'belajar', 'trust', 'client_credentials');

INSERT INTO oauth_client_details
(client_id, client_secret, resource_ids, scope, authorized_grant_types) VALUES
('clientpassword', '123', 'belajar', 'read,write', 'password');

INSERT INTO oauth_client_details
(client_id, client_secret, resource_ids, scope, authorized_grant_types, authorities, web_server_redirect_uri, autoapprove) VALUES
('clientimplicit', '123', 'belajar', 'read,write', 'implicit', 'CLIENT', 'http://localhost:30000/implicit', 'true');