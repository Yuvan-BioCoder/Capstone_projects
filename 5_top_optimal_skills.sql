/*
    Question: What are the top most optimal skills?
    • Identify skills in high demand and associated with high average salary for Data Scientist roles.
    • Concentrates on positions with specified salaries.
    • Why? It reveals how different skills impact salary levels for Data Analysts and helps identify the most financially rewarding skills to acquire.
*/
WITH top_demanded_skills AS
(
    SELECT
        skills_dim.skill_id,-- Grouping by skills would silently merge two distinct skill records into one group, quietly corrupting your counts and averages
        skills_dim.skills,
        COUNT(job_postings_fact.job_id) AS job_postings_count
    FROM
        job_postings_fact
    INNER JOIN
        skills_job_dim
    ON
        job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN
        skills_dim
    ON
        skills_job_dim.skill_id = skills_dim.skill_id
    WHERE
        job_title_short = 'Data Scientist' AND
        salary_year_avg IS NOT NULL
    GROUP BY
        skills_dim.skill_id
), top_paying_skills AS
(
    SELECT
        skills_dim.skill_id,
        skills_dim.skills,
        ROUND(AVG(salary_year_avg), 0) AS avg_salary
    FROM
        job_postings_fact
    INNER JOIN
        skills_job_dim
    ON
        job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN
        skills_dim
    ON
        skills_job_dim.skill_id = skills_dim.skill_id
    WHERE 
        job_title_short = 'Data Scientist' AND
        salary_year_avg IS NOT NULL
    GROUP BY
        skills_dim.skill_id
)

SELECT
    top_demanded_skills.skill_id,
    top_demanded_skills.skills,
    job_postings_count,
    avg_salary
FROM 
    top_demanded_skills
INNER JOIN
    top_paying_skills
ON
    top_demanded_skills.skill_id = top_paying_skills.skill_id-- GROUP BY skill_id is the version that's guaranteed correct regardless of what happens to the text values later
    -- It's always better practice to JOIN tables or CTEs with a constraint like PK and helps if that column holds integer type values than text values...
WHERE
    job_postings_count  > 25
ORDER BY
    avg_salary DESC,
    job_postings_count DESC
LIMIT 25;