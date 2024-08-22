-- create custom enum type
CREATE TYPE employment_status AS ENUM('employed', 'unemployed', 'self-employed');
-- creating tables and related data
CREATE TABLE IF NOT EXISTS users(
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    yearly_salary INT,
    current_status employment_status
);