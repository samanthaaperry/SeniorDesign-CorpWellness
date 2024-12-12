START TRANSACTION;
USE employee_wellness;

INSERT INTO employee (employee_id, fname, middle_initial, lname, `role` , phone_number, department_id, work_email)
VALUES
(101, 'John', 'A', 'Smith', 'worker', '555-0101', 'finance', 'john.smith@gre.com'),
(102, 'Emma', 'B', 'Johnson', 'worker', '555-0102', 'marketing', 'emma.johnson@gre.com'),
(103, 'Michael', 'C', 'Williams', 'coordinator', '555-0103', 'operations', 'michael.williams@gre.com'),
(104, 'Olivia', 'D', 'Brown', 'worker', '555-0104', 'sales', 'olivia.brown@gre.com'),
(105, 'William', 'E', 'Jones', 'coordinator', '555-0105', 'operations', 'william.jones@gre.com'),
(106, 'Sophia', 'F', 'Garcia', 'worker', '555-0106', 'marketing', 'sophia.garcia@gre.com'),
(107, 'James', 'G', 'Miller', 'coordinator', '555-0107', 'operations', 'james.miller@gre.com'),
(108, 'Isabella', 'H', 'Davis', 'worker', '555-0108', 'sales', 'isabella.davis@gre.com'),
(109, 'Benjamin', 'I', 'Rodriguez', 'worker', '555-0109', 'marketing', 'benjamin.rodriguez@gre.com'),
(110, 'Mia', 'J', 'Martinez', 'worker', '555-0110', 'finance', 'mia.martinez@gre.com'),
(111, 'Jacob', 'K', 'Hernandez', 'worker', '555-0111', 'sales', 'jacob.hernandez@gre.com'),
(112, 'Charlotte', 'L', 'Lopez', 'worker', '555-0112', 'marketing', 'charlotte.lopez@gre.com'),
(113, 'Ethan', 'M', 'Gonzalez', 'coordinator', '555-0113', 'operations', 'ethan.gonzalez@gre.com'),
(114, 'Amelia', 'N', 'Wilson', 'worker', '555-0114', 'sales', 'amelia.wilson@gre.com'),
(115, 'Alexander', 'O', 'Anderson', 'worker', '555-0115', 'finance', 'alexander.anderson@gre.com'),
(116, 'Harper', 'P', 'Thomas', 'worker', '555-0116', 'sales', 'harper.thomas@gre.com'),
(117, 'Daniel', 'Q', 'Taylor', 'secretary', '555-0117', 'operations', 'daniel.taylor@gre.com'),
(118, 'Evelyn', 'R', 'Moore', 'secretary', '555-0118', 'finance', 'evelyn.moore@gre.com'),
(119, 'Matthew', 'S', 'Jackson', 'secretary', '555-0119', 'marketing', 'matthew.jackson@gre.com'),
(120, 'Abigail', 'T', 'Martin', 'secretary', '555-0120', 'sales', 'abigail.martin@gre.com'),
(121, 'Adam', 'R', 'Samuel', 'coordinator', '555-1067', 'operations', 'adam.samuel@gre.com'),
(122, 'Rachael', 'E', 'Johnson', 'coordinator', '555-0123', 'operations', 'rachael.johnson@gre.com'),
(123, 'Mary', 'A', 'Grace', 'coordinator', '555-0159', 'operations', 'mary.grace@gre.com'),
(124, 'William', 'D', 'Oracle', 'coordinator', '555-8924', 'operations', 'william.oracle@gre.com'),
(125, 'Patrick', 'A', 'Star', 'coordinator', '555-1756', 'operations', 'patrick.star@gre.com'),
(126, 'Bob', 'T', 'Sponge', 'coordinator', '555-6928', 'operations', 'bob.sponge@gre.com');

-- Insert coordinators
INSERT INTO wellness_coordinator (employee_id, area_of_expertise, coordinator_credentials)
VALUES
(103, 'bmi', 'CERTFIT'), -- master coordinator
(105, 'blood_pressure', 'CERTMIN'),
(107, 'heart_rate', 'CERTNUT'),
(113, 'cholesterol', 'CERTGEN'),
(121, 'bmi', 'CERTPOP'),
(122, 'blood_pressure', 'CERTPOW'),
(123, 'heart_rate', 'CERTNAB'),
(124, 'cholesterol', 'CERTCON'),
(125, 'bmi', 'CERTGRE'),
(126, 'blood_pressure', 'CERTIFY');

-- 'bmi', 'blood_pressure', 'heart_rate', 'cholesterol'

-- Insert wellness programs
INSERT INTO wellness_program (program_id, employee_id, end_date, program_name, start_date, `type`)
VALUES
(201, 103, '2026-12-31', 'Fitness Challenge', '2023-09-01', 'bmi'),
(202, 105, '2026-12-31', 'Mindfulness Workshop', '2023-09-15', 'heart_rate'),
(203, 107, '2026-12-31', 'Nutrition Plan', '2023-09-30', 'cholesterol'),
(204, 113, '2025-12-31', 'Clean Eating', '2024-01-01', 'blood_pressure'),
(205, 121, '2024-06-30', 'Take the Stairs', '2024-01-15', 'bmi'),
(206, 122, '2024-06-30', 'Deep Breathing', '2024-02-01', 'heart_rate'),
(207, 123, '2024-06-30', 'No Sugar Challenge', '2024-03-01', 'cholesterol'),
(208, 124, '2024-06-30', 'Sleep and Sobriety', '2024-03-15', 'blood_pressure'),
(209, 125, '2024-06-30', 'No Sugar', '2024-04-01', 'bmi'),
(210, 126, '2024-06-30', 'Daily Movement', '2024-04-15', 'heart_rate');

-- Insert participations in programs
INSERT INTO participates_in (employee_id, program_id, enrollment_date)
VALUES
(101, 201, '2023-09-05'),
(102, 201, '2023-09-06'),
(103, 201, '2023-09-07'),
(104, 201, '2023-09-08'), 
(105, 202, '2023-09-16'),
(106, 202, '2023-09-17'),
(107, 202, '2023-09-18'),
(108, 202, '2023-09-19'),
(109, 203, '2023-10-01'),
(110, 203, '2023-10-02'),
(111, 203, '2023-10-03'),
(112, 203, '2023-10-04');

-- Assign coordinators to programs
INSERT INTO coordinated_by (employee_id, program_id)
VALUES
(103, 201), -- boss
(113, 201),
(105, 202),
(107, 203),
(121, 204),
(122, 205),
(123, 206),
(124, 207),
(125, 208),
(126, 209),
(126, 210);

-- Insert health metrics with trends

-- employee 101 - 104 are in program 201, type = "bmi"
-- employee 105 - 108 are in program 202, type = "heart_rate"
-- employee 109 - 112 are in program 203, type = "cholesterol"

INSERT INTO health_metrics (employee_id, date_measured, cholesterol_levels, resting_heart_rate, blood_pressure_systolic, blood_pressure_diastolic, bmi)
VALUES
(101, '2023-09-01', 180, 72, 120, 80, 24.5),
(101, '2023-10-01', 178, 71, 119, 79, 24.3),
(101, '2023-11-01', 176, 70, 118, 78, 24.1),

(102, '2023-09-01', 190, 75, 122, 82, 23.0),
(102, '2023-10-01', 189, 74, 121, 81, 22.9),
(102, '2023-11-01', 188, 73, 120, 80, 22.8),

-- Add the rest of the employee metrics
(103, '2023-09-01', 170, 70, 118, 78, 26.1),
(103, '2023-10-01', 169, 69, 117, 77, 26.0),
(103, '2023-11-01', 168, 68, 116, 76, 25.9),

(104, '2023-09-01', 160, 68, 115, 75, 22.5),
(104, '2023-10-01', 160, 68, 115, 75, 22.5),
(104, '2023-11-01', 160, 68, 115, 75, 22.5),

-- end bmi, begin heart_rate
(105, '2023-09-01', 200, 78, 125, 85, 28.0),
(105, '2023-10-01', 198, 76, 123, 83, 27.8),
(105, '2023-11-01', 196, 74, 121, 81, 27.6),

(106, '2023-09-01', 193, 78, 119, 80, 27.7),
(106, '2023-10-01', 192, 75, 118, 79, 27.4),
(106, '2023-11-01', 189, 71, 112, 80, 27.9),

(107, '2023-09-01', 178, 97, 143, 90, 39.0),
(107, '2023-10-01', 178, 94, 141, 91, 38.6),
(107, '2023-11-01', 178, 89, 138, 88, 38.1),

(108, '2023-09-01', 153, 60, 119, 82, 20.1),
(108, '2023-10-01', 154, 61, 119, 81, 19.8),
(108, '2023-11-01', 152, 58, 119, 83, 19.9),

-- end heart_rate, begin cholesterol
(109, '2023-09-01', 250, 74, 130, 85, 29.5),
(109, '2023-10-01', 248, 73, 129, 84, 29.3),
(109, '2023-11-01', 246, 72, 128, 83, 29.0),

(110, '2023-09-01', 240, 76, 127, 82, 28.1),
(110, '2023-10-01', 238, 75, 126, 81, 27.8),
(110, '2023-11-01', 236, 74, 125, 80, 27.5),

(111, '2023-09-01', 260, 82, 135, 88, 30.0),
(111, '2023-10-01', 258, 80, 134, 87, 29.8),
(111, '2023-11-01', 256, 78, 133, 86, 29.5),

(112, '2023-09-01', 245, 70, 122, 81, 26.0),
(112, '2023-10-01', 243, 69, 121, 80, 25.8),
(112, '2023-11-01', 241, 68, 120, 79, 25.5);


-- Some employees will show constant metrics without improvement


COMMIT;