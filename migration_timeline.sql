-- Cultural Adaptation Tracker
-- Migration Timeline Dataset
-- Author: Luana Saavedra

CREATE TABLE MigrationTimeline (
    experience_id INT PRIMARY KEY,
    year INT NOT NULL,
    country VARCHAR(50) NOT NULL,
    experience_type VARCHAR(100),
    cultural_context TEXT,
    skills_used TEXT,
    personal_reflection TEXT
);

-- Initial migration timeline

INSERT INTO MigrationTimeline (
    experience_id,
    year,
    country,
    experience_type,
    cultural_context,
    skills_used,
    personal_reflection

-- Query 1: View the complete migration timeline

SELECT *
FROM MigrationTimeline
ORDER BY year;


-- Query 2: Count experiences by country

SELECT
    country,
    COUNT(*) AS total_experiences
FROM MigrationTimeline
GROUP BY country
ORDER BY total_experiences DESC;


-- Query 3: Identify skills used across countries

SELECT
    year,
    country,
    skills_used
FROM MigrationTimeline
ORDER BY year;  
)
VALUES
(1, 2018, 'Austria', 'Migration',
 'First period living abroad',
 'Language learning',
 'To be documented'),

(2, 2019, 'United Kingdom', 'Cultural adaptation',
 'Living in London',
 'Cross-cultural communication',
 'To be documented'),

(3, 2019, 'Portugal', 'Cultural adaptation',
 'Living in Lisbon',
 'Portuguese language and cultural knowledge',
 'To be documented'),

(4, 2020, 'Spain', 'Migration',
 'Beginning a new period of residence',
 'Cultural adaptation',
 'To be documented');
