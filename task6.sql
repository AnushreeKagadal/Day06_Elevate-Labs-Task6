USE internship_db;
-- Scalar Subquery (in SELECT)
-- query to show mentor experience
SELECT intern_name,
       domain,
       (SELECT experience FROM mentors
        WHERE mentors.mentor_id=interns.mentor_id) AS mentor_experience
FROM interns;
select * from mentors;
select * from interns;
-- Subquery in WHERE using IN
-- 1.query to find interns whose mentors are specialized in Finance or Web Development
SELECT intern_name, domain, mentor_id 
FROM interns
WHERE mentor_id IN (SELECT mentor_id FROM mentors
                     WHERE specialization IN ('Finance','Web Development'));

-- Subquery in WHERE using EXISTS
-- 1.listing all interns who are guided by mentors
SELECT i.intern_name, i.domain
FROM interns i
WHERE EXISTS (
       SELECT 1 FROM mentors m 
       WHERE m.mentor_id=i.mentor_id
);

-- 2.finding interns who have mentors having more than 4 years of expereience
SELECT i.intern_name, i.domain
FROM interns i
WHERE EXISTS (
       SELECT 1 FROM mentors m
       WHERE m.mentor_id=i.mentor_id AND experience>4
);

-- 3.Interns who dont have mentors using NOT EXISTS
SELECT i.intern_name, i.domain
FROM interns i
WHERE NOT EXISTS (
    SELECT 1
    FROM mentors m
    WHERE m.mentor_id = i.mentor_id
);


-- Correlated Subquery
-- Finding mentors who guide more than one intern
INSERT INTO interns (intern_id, intern_name, domain, mentor_id, college)
VALUES (6, 'Kiran Patil', 'Data Analytics', 101, 'KLE Technological University');

SELECT m.mentor_name, m.specialization
FROM mentors m
WHERE (
    SELECT COUNT(*)
    FROM interns i
    WHERE i.mentor_id = m.mentor_id
) > 1;

 -- Subquery in FROM clause
 -- finding out how many interns each mentor guides, and then show only mentors who have at least one intern.
 SELECT 
    temp.mentor_id,
    temp.total_interns,
    m.mentor_name
FROM (
    SELECT mentor_id, COUNT(*) AS total_interns
    FROM interns
    WHERE mentor_id IS NOT NULL
    GROUP BY mentor_id
) AS temp
JOIN mentors m
ON temp.mentor_id = m.mentor_id
WHERE temp.total_interns >= 1;



