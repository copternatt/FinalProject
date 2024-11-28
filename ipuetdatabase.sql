CREATE TABLE Users (
    id INT IDENTITY(1,1) PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,  -- กำหนด email เป็น UNIQUE
    password VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL
);


DROP TABLE Users


INSERT INTO Users (email, password, name)
VALUES ('example1@example.com', 'password123', 'Suriyakiat'),
       ('example2@example.com', 'password456', 'John Doe'),
       ('example3@example.com', 'password789', 'Jane Smith');



CREATE TABLE UserDetails (
    email VARCHAR(255) PRIMARY KEY,  -- ใช้ email เป็น PRIMARY KEY
    weight DECIMAL(5,2) NOT NULL,    -- น้ำหนัก
    height DECIMAL(5,2) NOT NULL,    -- ส่วนสูง
    bmi DECIMAL(5,2) NOT NULL,       -- ค่า BMI
    FOREIGN KEY (email) REFERENCES Users(email)  -- เชื่อมโยงกับ email ของ Users
);

INSERT INTO UserDetails (email, weight, height, bmi)
VALUES ('example1@example.com', 70.5, 1.75, 70.5 / (1.75 * 1.75)),
       ('example2@example.com', 85.3, 1.80, 85.3 / (1.80 * 1.80)),
       ('example3@example.com', 55.0, 1.65, 55.0 / (1.65 * 1.65));

UPDATE UserDetails
SET bmi = weight / (height * height)
WHERE email = 'example1@example.com';

SELECT * FROM Users
SELECT * FROM UserDetails


