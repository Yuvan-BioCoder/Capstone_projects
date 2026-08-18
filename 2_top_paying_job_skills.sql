/*
    Question: Identify the top skills for the top paying data scientist jobs that we analyzed earlier.
    • Connect the skills_dim table to get the skill name.
    • Two  inner joins to establish the indirect connection via  skills_job_dim table.
    • Why? It prepares the seeker to find the relevant skills in demand for the opportunities.
*/

WITH top_paying_skills AS
(
    SELECT
        job_id,
        job_title,
        job_location,
        name AS company,
        job_schedule_type,
        salary_year_avg,
        job_posted_date
    FROM
        job_postings_fact
    LEFT JOIN
        company_dim
    ON
        job_postings_fact.company_id = company_dim.company_id
    WHERE 
        job_title_short = 'Data Scientist' AND
        job_location = 'Anywhere' AND 
        salary_year_avg IS NOT NULL
    ORDER BY
        salary_year_avg DESC
    LIMIT 10
)

SELECT 
    top_paying_skills.*,-- returns all columns from the CTE (can be used for tables too!) and some additional columns if required...
    skills
FROM
    top_paying_skills
INNER JOIN
    skills_job_dim
ON
    top_paying_skills.job_id = skills_job_dim.job_id
INNER JOIN
    skills_dim
ON
    skills_job_dim.skill_id = skills_dim.skill_id;