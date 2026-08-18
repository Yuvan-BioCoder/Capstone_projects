/*
    Question: What are the top 10 highest paying data - scientist jobs that are available remotely with a specified salary.
    • Identify top 10 highest - paying Data Scientist roles that are available remotely.
    • Focuses on job postings with specified salaries (remove NULL).
    • Why? Highlights the top - paying opportunities for Data Scientists, offering insights into employee information.
*/

SELECT
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
LIMIT 10;