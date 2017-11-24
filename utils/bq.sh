# Taken from https://stackoverflow.com/questions/41475499/how-to-measure-language-popularity-via-github-archive-data
bq query --format json "SELECT COUNT(*) c, JSON_EXTRACT_SCALAR(payload, '$.pull_request.base.repo.language') lang
FROM [githubarchive:month.201710]
WHERE JSON_EXTRACT_SCALAR(payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY 2
ORDER BY 1 DESC
LIMIT 100" 
