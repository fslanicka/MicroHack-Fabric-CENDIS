# Ch02: Ingest *raw* data with data pipelines and shortcuts 
> [!NOTE]
> 
> Back to [Readme](/README.md)

## Goal
Focus on integrating two data sources from NYC taxi data: one from 2015 and the other from 2023. The table below presents the metaphors we will use to integrate the data:

![Picture](/images/ch02/data-integration-one.png)

**Tasks Overview:**
* Data Ingestion: Initiate by loading historical data assets from the year 2015, a period when Azure Blob Storage was the zenith of data storage solutions. This step will simulate the transition of legacy data into a modern data ecosystem.
* Data Integration and Analysis: Shift focus to more recent data, specifically from January 2023. During this time, Azure Data Lake Storage Gen 2 (ADLS Gen2) became the benchmark for data storage in Azure. Instead of traditional data copying methods, you will leverage the innovative `Shortcuts` feature to streamline the integration process within our Lakehouse architecture.

By the end of the challenge, you will have completed the first step, the bronze layer, of the [medallion architecture](https://www.databricks.com/glossary/medallion-architecture):


![Picture](/images/ch02/intro.png)


### Actions

- Create Pipeline: Ingest Green Taxi 2015
	- With Copy Activity to Ingest Data:
		- Source: Azure Blob Storage: https://stmsfabricmicrohacksw.blob.core.windows.net/
			- Authentication kind: **Organizational account**
			- File path: 
				- Container: **taxidata**
				- File: **green_tripdata_2015-01.parquet**
			- File format: **Binary**
		- Destination : Lakehouse **bronzerawdata**
			- File path directory: **Landing/GreenTaxi2015**
			- Format: **Binary**
    
- Create Shortcut in your Lakehouse into **Files > Landing** to **2023** Container from Azure Data Lake Gen2: 
	- https://adlstmsfabricmicrohacksw.dfs.core.windows.net/ 
		- Authentication kind: **Organizational account**

## Success Criteria

- You have File "**green_tripdata_2015-01.parquet**" in your Lakehouse: Files > Landing > GreenTaxi2015
	- You can see the content of the file
- You have shortcut to Folder "2023" in your Lakehouse with files "**NYC-Taxi-Discounts-Per-Day.csv**" and "**green_tripdata_2023-01.parquet**"
	- You can see the content of both files

![Picture](/images/ch02/ch02-success1.png)


## Solution - Spoilerwarning
> Solutions steps for [Challenge 02](/solutions/ch02/ch02-solution.md)

## Next challenge is:
>[Challenge 03](/challenges/ch03/README.md)