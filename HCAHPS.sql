PatientID (INT): Unique identifier for each patient.
FacilityID (INT): Unique identifier for each healthcare facility.
SurveyDate (DATE): Date of the patient satisfaction survey.
CleanlinessRating (INT): Rating for cleanliness on a scale of 1-5.
CommunicationRating (INT): Rating for communication with healthcare providers on a scale of 1-5.
ResponsivenessRating (INT): Rating for responsiveness of healthcare providers on a scale of 1-5.
OverallRating (INT): Overall rating of patient satisfaction on a scale of 1-5.
SQL Code:

-- Calculate the average ratings for cleanliness, communication, responsiveness, and overall satisfaction
SELECT
AVG(CleanlinessRating) AS AvgCleanlinessRating,
AVG(CommunicationRating) AS AvgCommunicationRating,
AVG(ResponsivenessRating) AS AvgResponsivenessRating,
AVG(OverallRating) AS AvgOverallRating
FROM
HCAHPS;

-- Calculate the percentage of patients who rated cleanliness as excellent (rating of 5)
SELECT
(COUNT() FILTER (WHERE CleanlinessRating = 5) / COUNT()) * 100 AS CleanlinessExcellentPercentage
FROM
HCAHPS;

-- Calculate the average overall rating by facility
SELECT
FacilityID,
AVG(OverallRating) AS AvgOverallRating
FROM
HCAHPS
GROUP BY
FacilityID;

-- Retrieve the top 5 facilities with the highest overall ratings
SELECT
FacilityID,
AVG(OverallRating) AS AvgOverallRating
FROM
HCAHPS
GROUP BY
FacilityID
ORDER BY
AvgOverallRating DESC
LIMIT 5;