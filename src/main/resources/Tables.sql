Create table College(
college_id int NOT NULL AUTO_INCREMENT,
college_city_lvl1 varchar(255) NOT NULL,
college_city_lvl2 varchar(255),
college_title varchar(255) NOT NULL,
college_type varchar(255),
college_grade varchar(255),
PRIMARY KEY(college_id)
);

Create table DBinfo(
college_id int NOT NULL,
db_name varchar(255) NOT NULL,
db_patent_name varchar(255) NOT NULL,
paper_score_name varchar(255) NOT NULL,
PRIMARY KEY(college_id),
FOREIGN KEY (college_id ) REFERENCES College(college_id)
);

Create table PageAbstract(
web_id varchar(255) NOT NULL,
class_lvl1 varchar(255),
class_lvl2 varchar(255),
page_org varchar(255) NOT NULL,
page_ref int DEFAULT 0,
PRIMARY KEY(web_id)
);

Create table CollegeDetailNew(
college_id int NOT NULL,
college_title varchar(255) NOT NULL,
master_num int DEFAULT 0,
doc_num int DEFAULT 0,
post_doc_num int DEFAULT 0,
yuanshi_num int DEFAULT 0,
changjiang_num int DEFAULT 0, 
qingnian_num int DEFAULT 0,
good_sub_num int DEFAULT 0,
nature_prize_num int DEFAULT 0,
social_prize_num int DEFAULT 0, 
total_prize_num int DEFAULT 0,
lab_num int DEFAULT 0,
create_date date,
PRIMARY KEY(college_id),
FOREIGN KEY (college_id) REFERENCES College(college_id)
);

Create table CollegeOtherPre(
college_id int NOT NULL,
create_date date NOT NULL,
rdPctg_score double DEFAULT 0,
snrPctg_score double DEFAULT 0,
rdMoney_score double DEFAULT 0,
rdMoneyPp_score double DEFAULT 0,
projectNum_score double DEFAULT 0,
dealNum_score double DEFAULT 0,
dealMoney_score double DEFAULT 0,
PRIMARY KEY(college_id,  create_date),
FOREIGN KEY (college_id ) REFERENCES College(college_id)
);

CREATE TABLE student (
id bigint NOT NULL AUTO_INCREMENT,
dateOfBirth datetime ,
emailAddress varchar(255) ,
firstName varchar(255) NOT NULL,
lastName varchar(255),
password varchar(8),
userName varchar(20) NOT NULL,
college_id int,
PRIMARY KEY(id)
);


Create table CollegeOverallScore(
college_id int NOT NULL,
create_date date NOT NULL,
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
PRIMARY KEY(college_id,  create_date),
FOREIGN KEY (college_id ) REFERENCES College(college_id)
);

Create table CollegeTalentAndInputScore(
college_id int NOT NULL,
create_date date NOT NULL,
yuanshi_score double DEFAULT 0,
changjiang_score double DEFAULT 0,
qingnian_score double DEFAULT 0,
master_score double DEFAULT 0,
doc_score double DEFAULT 0,
post_doc_score  double DEFAULT 0,
lab_score double DEFAULT 0,
good_subject_score double DEFAULT 0,
nature_prize_score double DEFAULT 0,
social_prize_score double DEFAULT 0,
total_prize_score double DEFAULT 0,
research_score double DEFAULT 0,
input_score double DEFAULT 0,
PRIMARY KEY(college_id,  create_date),
FOREIGN KEY (college_id ) REFERENCES College(college_id)
);

Create table CollegePaperAndPatentScore(
college_id int NOT NULL,
create_date date NOT NULL,
ref_score double DEFAULT 0,
funds_score double DEFAULT 0,
sci_score double DEFAULT 0,
pku_score double DEFAULT 0,
paper_score double DEFAULT 0,
patent_score  double DEFAULT 0,
PRIMARY KEY(college_id,  create_date),
FOREIGN KEY (college_id ) REFERENCES College(college_id)
);

Create table CollegeOtherScore(
college_id int NOT NULL,
create_date date NOT NULL,
rdPctg_score double DEFAULT 0,
snrPctg_score double DEFAULT 0,
rdMoney_score double DEFAULT 0,
rdMoneyPp_score double DEFAULT 0,
projectNum_score double DEFAULT 0,
dealNum_score double DEFAULT 0,
dealMoney_score double DEFAULT 0,
PRIMARY KEY(college_id,  create_date),
FOREIGN KEY (college_id ) REFERENCES College(college_id)
);

Create table SubPaperScore(
college_id int NOT NULL,
create_date date NOT NULL,
paper_class_lvl1 varchar(255),
paper_class_lvl2 varchar(255),
ref_score double DEFAULT 0,
sci_score double DEFAULT 0,
pku_score double DEFAULT 0,
overall_score double DEFAULT 0,
PRIMARY KEY(college_id,  create_date, paper_class_lvl2),
FOREIGN KEY (college_id ) REFERENCES College(college_id)
);

Create table MeanDevRate(
id int NOT NULL,
ref_mean double NOT NULL,
ref_dev double NOT NULL,
funds_mean double NOT NULL,
funds_dev  double NOT NULL,
sci_mean double NOT NULL,
sci_dev  double NOT NULL,
pku_mean double NOT NULL,
pku_dev  double NOT NULL,
patent_mean double NOT NULL,
patent_dev  double NOT NULL,
PRIMARY KEY(id)
);

Create table MeanDevRateTA(
id int NOT NULL,
yuanshi_mean double NOT NULL,
yuanshi_dev double NOT NULL,
changjiang_mean double NOT NULL,
changjiang_dev double NOT NULL,
qingnian_mean double NOT NULL,
qingnian_dev double NOT NULL,
master_mean double NOT NULL,
master_dev double NOT NULL,
doc_mean double NOT NULL,
doc_dev double NOT NULL,
post_doc_mean double NOT NULL,
post_doc_dev double NOT NULL,
lab_mean double NOT NULL,
lab_dev double NOT NULL,
good_subject_mean double NOT NULL,
good_subject_dev double NOT NULL,
nature_prize_mean double NOT NULL,
nature_prize_dev double NOT NULL,
social_prize_mean double NOT NULL,
social_prize_dev double NOT NULL,
total_prize_mean double NOT NULL,
total_prize_dev double NOT NULL,
PRIMARY KEY(id)
);

Create table MeanDevRateSub(
paper_class_lvl2 varchar(255),
ref_mean double NOT NULL,
ref_dev double NOT NULL,
sci_mean double NOT NULL,
sci_dev  double NOT NULL,
pku_mean double NOT NULL,
pku_dev  double NOT NULL,
PRIMARY KEY(paper_class_lvl2 )
);

