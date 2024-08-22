-- CREATE TABLE users (
--     full_name VARCHAR(255) NOT NULL,
--     yearly_salary INT CHECK(yearly_salary > 0)
-- )
UPDATE users
SET yearly_salary = NULL
WHERE id = 4;
ALTER TABLE users
ADD CONSTRAINT yearly_salary_positive CHECK (yearly_salary > 0);