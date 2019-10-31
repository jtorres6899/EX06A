	SUBQUERY AGGREGATE FUNCTION
SELECT ProjectID, ProjectName, MaxHours
FROM Project
WHERE MaxHours >
(SELECT AVG (MaxHours)
FROM PROJECT
WHERE ProjectID = I.ProjectID
  	 FINAL QUERY
SELECT ProjectID, ProjectName, MaxHours
FROM Project
WHERE MaxHours >
(SELECT AVG (MaxHours)
FROM PROJECT
WHERE ProjectID = ProjectID
ORDER BY ProjectID, MaxHours)
	DOUBLE NOT EXISTS
 SELECT DISTINCT OfficeNumber
FROM Department
WHERE NOT EXISTS 
	( SELECT * 
	FROM Department
	WHERE DepartmentName.OfficeNumber=
		office.officeNumber
	);
	FINAL DOUBLE NOT EXITS
SELECT DISTINCT OfficeNumber
FROM Department
WHERE NOT EXISTS 
	( SELECT * 
	FROM DepartmentName
	WHERE DepartmentName.OfficeNumber=
		office.officeNumber
	);
