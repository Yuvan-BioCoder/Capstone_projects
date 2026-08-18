/*
    Question: What are the most in - demand skills for data scientists?
    • INNER JOIN tables indirectly like in the previous query.
    • Identify the top 5 in - demand skills for a data scientist.
    • Why? Retrieves the top 5 skills with the highest demand in the job market to help prepare the job seeker.
*/

SELECT
    skills,
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
    job_title_short = 'Data Scientist'
GROUP BY
    skills
ORDER BY
    job_postings_count DESC
LIMIT 5;