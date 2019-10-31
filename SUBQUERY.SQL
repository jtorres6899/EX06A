SUBQUERY AGGREGATE FUNCTION
SELECT ProjectID, ProjectName, MaxHours
FROM Project
WHERE MaxHours >
(SELECT AVG (MaxHours)
FROM PROJECT
WHERE ProjectID = ProjectID
ORDER BY ProjectID, MaxHours)
