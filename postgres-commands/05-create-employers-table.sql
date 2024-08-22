-- CREATE TYPE company_hiring AS ENUM ('Yes', 'No');
CREATE TABLE IF NOT EXISTS employers (
    id SERIAL PRIMARY KEY,
    company_name VARCHAR(255) NOT NULL,
    company_address VARCHAR(255) NOT NULL,
    yearly_revenue NUMERIC,
    is_hiring BOOLEAN
)