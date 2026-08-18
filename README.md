# 📊 SQL Projects Portfolio

A collection of SQL projects demonstrating data analysis, database design, and query optimization skills. This portfolio showcases my ability to work with various SQL databases and perform complex data manipulations. This project provides insights  on job postings related to Data Science domain.

## 👋 About Me

I'm an aspiring data scientist currently exploring the world of data analytics working on queries, statistics and dashboards visualising data after the complete analysis.

- 🔍 Interests: Data Analysis, Coding, DSA
- 🛠️ Tools: PostgreSQL, VSCode, Git, GitHub
- 📫 Contact: aiyuvan07@gmail.com

---

## 📁 Projects

### 1. [Top Paying Jobs For Data Scientists](1_top_paying_jobs.sql)
**Summary:** Identify top 10 highest - paying Data Scientist roles that are available remotely.

![Salary by company](Assets/salary_by_company.png)

*Figure 1: Average salary payouts of companies*

- **Skills demonstrated:** Joins, filtering, ORDER BY
- **Key insight:** 
---

| Metric | Value |
|---|---|
| Jobs analyzed  |           10 |
| Highest salary |    **$550K** |
| Average salary | **$375.85K** |
| Median salary  |    **$322K** |
| Companies      |        **8** |

---

### 2. [Top Paying Skills For Data Scientists](2_top_paying_job_skills.sql)
**Summary:** Identifies the top skills for the top paying data scientist jobs that we analyzed earlier.

- **Skills demonstrated:** CTEs, Joins
- **Key insight:** Python appears across multiple high-paying roles, while the dataset also shows demand for SQL, cloud platforms (AWS / Azure / GCP), and ML frameworks such as PyTorch and TensorFlow

---

### 3. [Top Demanded Skills For Data Scientists](3_top_demanded_skills.sql)
**Summary:** Retrieves the top 5 skills with the highest demand in the job market to help prepare the job seeker.

- **Skills demonstrated:** Joins, Aggregate functions
- **Key insight:** Python leads with 114,016 postings, followed by SQL (79,174) and R (59,754). Python appears in about 1.44× as many postings as SQL and nearly 3.86× as many as Tableau.

---

### 4. [Top Paying Skills For Data Scientists](4_top_paying_skills.sql)
**Summary:** It reveals how different skills impact salary levels for Data Scientists and helps identify the most financially rewarding skills to acquire.

![Distribution of average salaries](Assets/skill_salary_distribution.png)

*Figure 2: Salary and skills distribution*

- **Skills demonstrated:** Window functions, Multi-table joins, filtering, GROUP BY
- **Key insight:** 

| Metric | Value |
| --- | --- |
| Skills analyzed        |              **190** |
| Highest average salary | **$215,477 — Asana** |
| Lowest average salary  | **$74,271 — VB.NET** |
| Mean skill salary      |         **$128,951** |
| Median skill salary    |         **$126,000** |

---

### 5. [Top Optimal Skills For Data Scientists](5_top_optimal_skills.sql)
**Summary:** Showcases the skills in high demand and associated with high average salary for Data Scientist roles.

![In demand skills](Assets/top_skills_demand.png)

*Figure 3: Top in - demand skills*

![High payout skills](Assets/top_skills_salary.png)

*Figure 4: High payout skills*

![Demand Vs Salary](Assets/demand_vs_salary.png)

*Figure 5: Distribution of skills in - demand Vs high payout  skills*

- **Skills demonstrated:** Data cleaning, Multi - CTEs, Multi - table joins, Aggregate functions
- **Key insight:** Python and SQL dominate job volume, while some lower-volume skills such as Neo4j and Airflow have substantially higher average salaries.

---

## 🗂️ Repository Structure

```
sql-projects/
├── README.md
├── LICENSE
├── 1_top_paying_jobs.sql
├── 2_top_paying_job_skills.sql
├── 3_top_demanded_skills.sql
├── 4_top_paying_skills.sql
└── 5_top_optimal_skills.sql
```

---

## 🧰 Skills Summary

| Category | Skills |
|---|---|
| Querying | SELECT, JOINs, subqueries, CTEs, window functions |
| Data Modeling | Schema design, normalization, ER diagrams |
| Performance | Indexing, query optimization, EXPLAIN / ANALYZE |
| Administration | Stored procedures, triggers, views, transactions |
| Tools | PostgreSQL / VSCode / Git / GitHub |

---

## 📌 How to Use This Repo

1. Clone the repo:
```bash
   git clone https://github.com/Yuvan-BioCoder/Capstone_projects.git
```
2. Open any `.sql` file in your SQL client of choice (e.g. MySQL Workbench, pgAdmin, DBeaver)
3. Run the queries against your own dataset, or adjust table/column names to match your schema

---

## 📄 License

This repository is licensed under the [MIT License](./LICENSE).