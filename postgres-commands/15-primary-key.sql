DROP TABLE users;
DROP TABLE employers;
DROP TABLE conversations;
CREATE TYPE employment_status AS ENUM('employed', 'unemployed', 'self-employed');
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    yearly_salary INT CHECK (yearly_salary > 0) NOT NULL DEFAULT NULL,
    current_status employment_status,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE employers (
    id SERIAL PRIMARY KEY,
    company_name VARCHAR(255) UNIQUE NOT NULL,
    company_address VARCHAR(255) NOT NULL,
    yearly_revenue NUMERIC CHECK (yearly_revenue > 0),
    is_hiring BOOLEAN DEFAULT FALSE,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS conversations (
    id SERIAL PRIMARY KEY,
    talent_id INT NOT NULL,
    employer_id INT NOT NULL,
    message TEXT NOT NULL,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);