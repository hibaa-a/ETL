
## Contributions -
    (1) Abraham Ofolu (Sourcing the data, ETL figure and contribution for data transformation part for README)
    (2) Astha Nayak (Cleaning the entire data and streamlining data files to include relevant columns only)
    (3) Farjana Rowther (further deep cleaning of data, database table creation, loading data to Postgres, and writing the README file)
    (4) Hibaa Aldubai (Project proposal and ERD diagram)
    (5) Vivian Nnadozie (ETL diagram, suggestions for the readme and schema)
    
## Disclaimer: 
  (1) In order for every team members contribution to be counted towards final assessment, we have not taken any of the files from this repository out.             
  (2) Instead we are including a list of files that needs to be considered towards the final assesment of this project.
        
       (a) Project Proposal - https://github.com/hibaaaldubai/Group-1-Project-2/blob/main/Group%201%20Project%202%20Project%20Proposal.docx
        
       (b) Cleaned dataset file - https://github.com/hibaaaldubai/Group-1-Project-2/blob/main/Data%20cleaning.ipynb
        
       (c) Additional cleaning and final analysis file - https://github.com/hibaaaldubai/Group-1-Project-2/blob/main/AnalysisFinal.ipynb
        
       (d) .sql schema file - https://github.com/hibaaaldubai/Group-1-Project-2/blob/main/Postgresql%20/Accident_db.sql
        
       (e) Uploaded Accident data - https://github.com/hibaaaldubai/Group-1-Project-2/blob/main/Postgresql%20/Accident.png
        
       (f) Uploaded Vehicle data -  https://github.com/hibaaaldubai/Group-1-Project-2/blob/main/Postgresql%20/Vehicle.png
        
       (g) .gitignore - config file included to safeguard the user credentials.
        
       (h) ERD diagram file - https://github.com/hibaaaldubai/Group-1-Project-2/blob/main/ERD%20diagram%202.png
        
       (i) ETL pipeline - https://github.com/hibaaaldubai/Group-1-Project-2/blob/main/ETL%20Diagram.png



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
   
   (a) Unneccessary colums were taken out 
   
   (b) Simplify and rename the column names of the two data files
   
   (c) Rows with missing data were taken out.
   
   (d) Unique value counts of columns were determined and 'Not known' & 'Data missing or out of range' were taken from the data file.
   
   (e) Accident file had (1048575 rows × 4 columns) values and after the cleaning process we had (1027183 rows × 4 columns) value counts.
   
   (f) Vehicle file had (2177205 rows × 6 columns) values and after the cleaning process we had (1518391 rows × 6 columns) value counts.
   
   (g) The clean pandas dataframes were uploaded to postgresql.
   

# Data Engineering -
Accident_db was created on Postgresql followed by creating two tables namely - Accident and Vehicle. 

Using the provided information, we created table schema for each of the CSV files followed by specifing their data types, primary keys, foreign keys, and other constraints. The .sql schema file has been attached for your reference. 

# Loading of the data onto Postgresql - 
We successfully loaded the cleaned dataframe onto the respective empty tables in Postgresql after establishing connection by creating an engine. The details are included in the Analysisfinal.ipynb file (https://github.com/hibaaaldubai/Group-1-Project-2/blob/main/AnalysisFinal.ipynb). 

The successful uploading was confirmed by the (SELECT * FROM accident/vehicle) query and the following secreenshots display the same as follows -

![alt text](https://github.com/hibaaaldubai/Group-1-Project-2/blob/main/Postgresql%20/Accident.png)

![alt text](https://github.com/hibaaaldubai/Group-1-Project-2/blob/main/Postgresql%20/Vehicle.png)


# Conclusions -
  As a part of this project, we were able to successfully extract, transform and load the data onto the relational database, Postgresql for further analysis by the Data Analytics team. 

# Future work suggestions -
  The database tables 'accident' and 'vehicle' could be joined (FULL JOIN) at the primary key id (accident index) and the following queries could be performed -
    
    (a) Is there any correlation between 'driver_age' and 'accident severity'
    
    (b) Is there any correlation between 'vehicle_age' and 'accident severity'
    
    (c) Is there any correlation between 'driver_sex' and 'accident severity'
    
    (d) Is there any correlation between 'model' and 'make'(indicating the vehicle size and type indirectly) and 'accident severity'
    
    (e) Is there any correlation between 'weather conditions' and 'accident severity'
    
    (f) Is there any correlation between 'day of the week' and 'accident severity'




