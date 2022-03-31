DELETE FROM job
WHERE job_name = 'RAM'
RETURNING job_id, job_name