
CREATE TABLE role (
role_id SERIAL PRIMARY KEY,
role_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE app_user (
user_id SERIAL PRIMARY KEY,
username VARCHAR(50) UNIQUE NOT NULL,
password VARCHAR(100) NOT NULL,
enabled BOOLEAN NOT NULL,
role_id INTEGER REFERENCES role(role_id)
);
