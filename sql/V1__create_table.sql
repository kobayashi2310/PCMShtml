CREATE TABLE IF NOT EXISTS type (
    type CHAR(1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS users (
    id CHAR(6) NOT NULL,
    type CHAR(1) NOT NULL,
    name VARCHAR(100) NOT NULL,
    password VARCHAR(256) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    role ENUM('student', 'teacher') NOT NULL DEFAULT 'user',
    PRIMARY KEY (id, type),
    FOREIGN KEY (type) REFERENCES type(type)
);