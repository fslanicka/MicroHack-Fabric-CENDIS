# Ch05: Build *gold* tables and a semantic layer for Power BI reporting
> [!NOTE]
> 
> Back to [Readme](/README.md)

## Goal

In this challenge, you will aggregate augmented data from a [silver layer](/challenges/lakehouse-layers.md) into a curated [gold layer](/challenges/lakehouse-layers.md) for advanced business analysts. Next, you will define semantic layer for end users and create the first Power BI report.

By the end of the challenge, you will have completed the implementation of the [medallion architecture](https://www.databricks.com/glossary/medallion-architecture) with semantics layer and reports:

![Picture](/images/ch05/intro.png)

## Actions

- Create the 3rd lakehouse: **goldcurated**
- Create Shortcut in your Lakehouse into **Tables** area to pre-created delta tables:  **dimLocations, dimpaymenttype, dimratecode, dimvendor** from Azure Data Lake Gen2 (Container: **dimensions**):
	- https://adlstmsfabricmicrohacksw.dfs.core.windows.net/ 
		- Authentication kind: **Organizational account**
- Import [**challenges/ch05/Transform silver to gold - Ch05.ipynb**](/challenges/ch05/Transform%20silver%20to%20gold%20-%20Ch05.ipynb) to you workspace and try to complete all Goals / Actions mentioned in notebook
	- Remove origin lakehouses from Notebook and Add/attach your **silvercleansed** (as default) lakehouse and **goldcurated** lakehouse
- Build Semantics model **GreenTaxi** based on 4 dimensions and 2 facts tables with Avg. function and relations
	- dimLocations.LocationID 1:N green_discount.PULocationID
	- dimpaymenttype.payment_type 1:N green_discount.payment_type
	- dimratecode.RatecodeID 1:N green_discount.RateCodeID
	- dimvendor.VendorID 1:N green_discount.VendorID
	- --
	- dimLocations.LocationID 1:N green_avg_metrics.PULocationID
	- dimvendor.VendorID 1:N greengreen_avg_metrics.VendorID

- Create sample report based on **GreenTaxi** Semantic model with 
	- 1 Clustered bar chart, 1 Line chart, 1 Azure maps, 1 Narrative and 1 Slicer
- Create SQL View **vGetAverageFaresDiscounts** based on "Lakehouse SQL analytics endpoint" for business analysts
	- Get the distinct passenger count, total fares, average fares and discount grouped by the passenger count
## Success Criteria

- All success criteria mentioned in the notebook are met
- 6 tables with data in **goldcurated** lakehouse exist
- Semantics model **GreenTaxi** with 2 Fact tables and 4 Dimensions exists
- Report based on **GreenTaxi** Semantics model exist
- SQL View **vGetAverageFaresDiscounts** returns 8 records

Lakehouse: **goldcurated**
![Picture](/images/ch05/ch05-success1.png)

Semantics model: **GreenTaxi**
![Picture](/images/ch05/ch05-success2.png)

Report: **Quick summary**
![Picture](/images/ch05/ch05-success3.png)

## Solution - Spoilerwarning
> Solutions steps for [Challenge 05](/solutions/ch05/ch05-solution.md)

## Next challenge is:
>[Challenge 06](/challenges/ch06/README.md)