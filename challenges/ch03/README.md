# Ch03: Load *bronze* tables
> [!NOTE]
> 
> Back to [Readme](/README.md)

## Goal

In this challenge, you will load three files into three Delta tables in the [bronze layer](/challenges/lakehouse-layers.md) lakehouse.  You will use three different load strategies:
 1. ETL Developer: Data Factory Pipeline
 2. Citizen Data Developer: Data Factory Dataflow Gen2
 3. Data Engineer: Notebook

![Picture](/images/ch03/intro.png)

## Actions

- **ETL Developer: Data Factory Pipeline**
	- Create a new pipeline: **Load Green Taxi 2015**
	- Source:
		- Connection: **bronzerawdata** lakehouse
		- Root folder: **Files**
		- File path: **Landing/GreenTaxi2015/green_tripdata_2015-01.parquet**
		- File format: **Parquet**
	- Destination: 
		- Connection: **bronzerawdata** lakehouse
		- Root folder: **Tables**
		- Table: **green201501** (new table)
		- Table action: **Overwrite**

- **Citizen Data Developer: Data Factory Dataflow Gen2**
	- Create a new Dataflow Gen2: **Load Green Taxi Discounts**
	- Source: **bronzerawdata** lakehouse
		- File path: **Files > Landing > 2023 > NYC-Taxi-Discounts-Per-Day.csv**
	- Unpivot Columns to Rows
		- Final table structure will be:
			- **VendorID (Whole number) | date (Text) | discount (Whole number)**
	- Destination: **bronzerawdata** lakehouse
	- Table: **greenDiscountsPerDay**

- **Data Engineer: Notebook**
	- Create a new Notebook: **Load Green Taxi 2023** or Import [**challenges/ch03/Load Green Taxi 2023 - Ch03.ipynb**](/challenges/ch03/Load%20Green%20Taxi%202023%20-%20Ch03.ipynb)
		- Remove origin lakehouses from Notebook and Add/attach your bronzerawdata (as default) lakehouse
	- Source: **Files/Landing/2023/green_tripdata_2023-01.parquet**
	- Target: **Tables/green202301**
		- Format: **delta**
		- Mode: **overwrite**

- Check # of rows per delta tables
## Success Criteria

- Table **green201501** **exists** with **1 508 493** **rows**.
- Table **green202301** **exists** with **68 211** **rows**.
- Table **greenDiscountsPerDay** **exists** with **6 746 rows**.


![Picture](/images/ch03/ch03-success1.png)


## Solution - Spoilerwarning
> Solutions steps for [Challenge 03](/solutions/ch03/ch03-solution.md)

## Next challenge is:
>[Challenge 04](/challenges/ch04/README.md)