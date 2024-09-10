-- Creating the beneficiaries table
CREATE TABLE beneficiaries (
    beneficiary_id SERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    age INT,
    gender VARCHAR(255),
    location VARCHAR(255),
    household_size INT,
    health_status VARCHAR(255)
);

-- Inserting data into the beneficiaries table
INSERT INTO beneficiaries (first_name, last_name, age, gender, location, household_size, health_status)
VALUES 
    ('Jeff', 'Lee', 45, 'Male', 'Nyahururu', 132, 'Moderate'),
    ('Ashley', 'Nelly', 34, 'Female', 'Mombasa', 109, 'Moderate'),
    ('Cleophas', 'Jerechei', 47, 'Male', 'Sugoi', 168, 'Bad');

-- Creating the programs table
CREATE TABLE programs (
    program_id SERIAL NOT NULL PRIMARY KEY,
    program_name VARCHAR(255),
    start_date DATE,
    end_date DATE,
    description TEXT,
    target_group VARCHAR(255)
);

-- Inserting data into the programs table
INSERT INTO programs (program_name, start_date, end_date, description, target_group)
VALUES 
    ('Health Awareness', '2024-01-01', '2024-12-31', 'A program aimed at spreading awareness about public health and hygiene.', 'General Public'),
    ('Food Distribution', '2024-03-15', '2024-09-15', 'A program focused on providing food for those who are unable to get.', 'Youth'),
    ('Improving Selfcare', '2024-05-01', '2024-11-30', 'A program designed to provide awareness and support for the elderly.', 'Elderly');

-- Creating the distributions table
CREATE TABLE distributions (
    distribution_id SERIAL NOT NULL PRIMARY KEY,
    program_id INT NOT NULL,
    beneficiary_id INT NOT NULL,
    distribution_date DATE,
    food_item VARCHAR(255),
    quantity INT,
    FOREIGN KEY (program_id) REFERENCES programs(program_id),
    FOREIGN KEY (beneficiary_id) REFERENCES beneficiaries(beneficiary_id)
);

-- Inserting data into the distributions table
INSERT INTO distributions (program_id, beneficiary_id, distribution_date, food_item, quantity)
VALUES 
    (1, 1, '2024-07-15', 'Rice', 50),
    (2, 2, '2024-08-10', 'Beans', 100),
    (3, 3, '2024-09-05', 'Cooking Oil', 25);

	SELECT *FROM programs;