/* Seed table user */
INSERT INTO s_users (username, password, active) VALUES ('endy', '123', true);
INSERT INTO s_users (username, password, active) VALUES ('adi', '123', true);

/* Seed table permission */
INSERT INTO s_permissions (id_user, user_role) VALUES (1, 'ROLE_SUPERVISOR');
INSERT INTO s_permissions (id_user, user_role) VALUES (1, 'ROLE_OPERATOR');
INSERT INTO s_permissions (id_user, user_role) VALUES (2, 'ROLE_OPERATOR');

/* Seed table client_detail */
INSERT INTO oauth_client_details
(client_id, client_secret, resource_ids, scope, authorized_grant_types, authorities) VALUES
('clientauthcode', '123456', 'belajar', 'read,write', 'authorization_code, refresh_token', 'CLIENT');

INSERT INTO oauth_client_details 
(client_id, client_secret, resource_ids, scope, authorized_grant_types) VALUES
('clientcred', '123456', 'belajar', 'trust', 'client_credentials');

INSERT INTO oauth_client_details 
(client_id, client_secret, resource_ids, scope, authorized_grant_types) VALUES
('clientapp', '123456', 'belajar', 'read,write', 'password');

INSERT INTO oauth_client_details 
(client_id, client_secret, resource_ids, scope, authorized_grant_types, web_server_redirect_uri, autoapprove) VALUES
('jsclient', 'jspasswd', 'belajar', 'read,write', 'implicit', 'http://localhost:7070/implicit/implicit-client.html', true);

INSERT INTO oauth_client_details
(client_id, client_secret, scope, authorized_grant_types, web_server_redirect_uri, autoapprove) VALUES
('clientimplicit', '123', 'read,write', 'implicit', 'http://localhost:4200/implicit', true);