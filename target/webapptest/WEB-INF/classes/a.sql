

SELECT FIND_IN_SET( overall_score, (    
SELECT GROUP_CONCAT( overall_score
ORDER BY overall_score DESC )
FROM CollegeOverallScore where college_id IN 
(select college_id from College where college_city_lvl2 = (select college_city_lvl2 from College where college_id = 35 ))
) 
) AS rank
FROM CollegeOverallScore
WHERE college_id =  35

Create table CollegeOverallScore(
college_id int NOT NULL,
talent_score double(5,2) DEFAULT 0,
platform_score double(5,2) DEFAULT 0,
input_score double(5,2) DEFAULT 0,
paper_score double(5,2) DEFAULT 0,
prize_score double(5,2) DEFAULT 0,
patent_score  double(5,2) DEFAULT 0,
transform_score  double(5,2) DEFAULT 0,
basic_score  double(5,2) DEFAULT 0,
output_score  double(5,2) DEFAULT 0,
overall_score  double(5,2) DEFAULT 0,
PRIMARY KEY(college_id),
FOREIGN KEY (college_id ) REFERENCES College(college_id)
);

