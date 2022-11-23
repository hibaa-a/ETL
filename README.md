# Group-1-Project-2 : ETL 

As a part of this collaborative project, we were asked to source, transform and load the data to the SQL database for the purpose of data analysis.

# Data Extraction - 
Acting as a team of data engineers on this ETL project, we were required to source the datasets that will investigate UK Road Traffic Collision for the period of 2005-2017. 

After sourcing the dataset, we transformed the data and uploaded to the Postgresql (Accident_db) for further analysis by the Data Analytics Team.
   
   (a) Data Source: www.kaggle.com.
   
   (b) Datasets : UK Road Traffic Collision for the period of 2005-2017. 
   
   (b) Dataset had two csv files consisting of (a) accident_data and (b) vehicle_data 
   
   (c) Owing to the large size of these datasets, we were unable to upload the files to GitHub.
   
   (d) Hence, we have provided the link to the datasets - https://www.kaggle.com/datasets/salmankhaliq22/road-traffic-collision-dataset
   
# Extract Transform Load (ETL) Pipeline - 
The ETL Pipeline employed for this project is presented as follows - 

![alt text](https://github.com/hibaaaldubai/Group-1-Project-2/blob/main/ETL%20Diagram.png)

# Entity Relationship Diagram (ERD)-

We inspected the CSV files at hand and sketched out an ERD diagram of the two datasets employing a free online tool (http://www.quickdatabasediagrams.com). 

![alt text](https://github.com/hibaaaldubai/Group-1-Project-2/blob/main/ERD%20diagram%202.png)

# Data transformation - 
(1) Unneccessary colums were taken out
(2) Simplify and rename the column names of the two data files
(3) Rows with missing data were taken out.
(4) Simplify and rename the column names of the two data files
(4) Unique value counts of columns were determined and 'Not known' & 'Data missing or out of range' were taken from the data file.
(5) Accident file had (1048575 rows × 4 columns) values and after the cleaning process we had (1027183 rows × 4 columns) value counts.
(6) Vehicle file had (1999387 rows × 6 columns) values and after the cleaning process we had (1518391 rows × 6 columns) value counts.

The clean pandas dataframes were uploaded to postgresql.
(1) Unneccessary colums were taken out
(2) Simplify and rename the column names of the two data files
(3) Rows with missing data were taken out.
(4) Simplify and rename the column names of the two data files
(4) Unique value counts of columns were determined and 'Not known' & 'Data missing or out of range' were taken from the data file.
(5) Accident file had (1048575 rows × 4 columns) values and after the cleaning process we had (1027183 rows × 4 columns) value counts.
(6) Vehicle file had (1999387 rows × 6 columns) values and after the cleaning process we had (1518391 rows × 6 columns) value counts.
The clean pandas dataframes were uploaded to postgresql.



# Data Engineering
Accident_db was created on Postgresql followed by creating two tables namely - Accident and Vehicle. 

Using the provided information, we created table schema for each of the CSV files followed by specifing their data types, primary keys, foreign keys, and other constraints. The .sql schema file has been attached for your reference. 

# Loading of the data onto Postgresql - 
We successfully loaded the cleaned dataframe onto the respective empty tables in Postgresql after establishing connection by creating an engine. The details are included in the Analysisfinal.ipynb file (https://github.com/hibaaaldubai/Group-1-Project-2/blob/main/AnalysisFinal.ipynb). 

The successful uploading was confirmed by the (SELECT * FROM accident/vehicle) query and the following secreenshots display the same as follows -

![alt text](https://github.com/hibaaaldubai/Group-1-Project-2/blob/main/Postgresql%20/Accident.png)

![alt text](https://github.com/hibaaaldubai/Group-1-Project-2/blob/main/Postgresql%20/Vehicle.png)


# Disclaimer: 
  (1) In order for every team members contribution to be counted towards final assessment, we have not taken any of the files from this repository out.             
  (2) Instead we are including a list of files that needs to be considered towards the final assesment of this project.

