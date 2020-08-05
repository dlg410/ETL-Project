# ETL-Project

World Happiness Report vs HDI — ETL Project
By Zachary Frame and Diego Gonzalez

Project Proposal
Based upon the data compiled by the United Nations Development Program, Kaggle, the World-bank, we want to explore the
different indicators used to rank countries in both the Human Development Index and the World Happiness Report.

This will be done by web-scrapping both websites in order to find the relevant indicators, and by extracting the CSV data
from the United Nations website and migrating it to a PostgreSQL Database.

Project Description

Finding Data
All of the data that we used were from https://undp.org/, https://www.worldbank.org, https://www.kaggle.com  where they
compiled from various sources that include Eurostat, U.S National Center for Statistics, World Healthcare Organization, etc.. 

Data Cleanup and Analysis

EXTRACTION STEPS 
				
Developing a web scraping function using Python, Jupyter Notebooks, Splinter,  that would allows us to collect data from 
different sources to be used in later stages.
			
TRANSFORMATION STEPS 

Our transformation steps we needed to clean the data to be readable, presentable, and easy for us to query in the later
stages. This was done by:

Developing a cleaning function in Jupiter Notebook that would select the data from 2010 until most recently available. This
was applied to all datasets that we have.

LOADING STEPS

We established a connection to a local PostgreSQL server in our desktop to store the data
We have a schema that just makes the tables and we can confirm it through engine.table_names()
We pushed the Pandas DataFrame to the local PostgreSQL server so we can retrieve and query the data in our Jupyter Notebook
			


ANALYSIS 
			
The aim of the analysIs is to determined if there is a correlation between the Human Development Index and The World
Happiness Report.
Also if The Human Development Index is dependent on the specific ranking on the that country ranking of the World Happiness
Report or Viceversa.
We use data from the Inequality-Adjusted HDI as a reference to see the level of discrepancies.