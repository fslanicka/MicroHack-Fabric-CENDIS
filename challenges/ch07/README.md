# Ch07: Process unstructured data with an LLM
> [!NOTE]
> 
> Back to [Readme](/README.md)
¨
## Goal
In this challenge, you will focus on processing unstructured data from real user reviews of locations in New York.

With Microsoft Fabric, all business professionals—data engineers, data scientists, developers, and analysts—can gain more value from their data through Generative AI.

There are two features in Microsoft Fabric today:
1. Use [AI services](https://learn.microsoft.com/en-us/fabric/data-science/ai-services/ai-services-overview) with prebuilt and customizable APIs and models, but you need to develop code to process the output into the final schema:
    - Language Models: gpt-5, gpt-4.1, gpt-4.1-mini, and gpt-4o-mini
    - APIs: Text Analytics, and Azure AI Translator
2. Use the new set of [AI functions](https://learn.microsoft.com/en-us/fabric/data-science/ai-functions/overview?tabs=pandas-pyspark%2Cpandas) for data engineering, which is much easier. Fabric users can take advantage of industry-leading large language models (LLMs) to transform and enrich data with just a single line of code.

By the end of this challenge, you will have a new dataset with sentiment, classification, summarization, translation, key topics, and location extracted from real user reviews.

> [!TIP]
It’s up to you which feature you choose, but this challenge is designed for **AI functions**.


## Actions
There are two options, (1) without Data Preparation tasks and (2) with Data Preparation tasks:

**1. without Data Preparation tasks:**
- You can create new lakehouse for Sandboxing or use your **goldcurated** lakehouse.
- Create Shortcut in your Lakehouse into **Tables** area to pre-created delta table:  **NY_places_customer_reviews_parsed** from Azure Data Lake Gen2 (Container: **reviews** ):
	- https://adlstmsfabricmicrohacksw.dfs.core.windows.net/ 
		- Authentication kind: **Organizational account**
- Import [**challenges/ch07/User reviews processing with LLM - AI Functions - Ch07.ipynb**](/challenges/ch07/User%20reviews%20processing%20with%20LLM%20-%20AI%20Functions%20-%20Ch07.ipynb) to your workspace and try to complete all Goals / Actions mentioned in that notebook
    - Remove origin lakehouses from Notebook and Add/attach your **goldcurated** (as default) lakehouse 


**2. with Data Preparation tasks:**
- You can create new lakehouse for Sandboxing or use your **goldcurated** lakehouse.
- Upload file [NY_places_customer_reviews.csv](/sourcedata/adl/reviews/NY_places_customer_reviews.csv) to your lakehouse (Files area)
- Import [**challenges/ch07/User reviews processing with LLM - AI Functions with DE - Ch07.ipynb**](/challenges/ch07/User%20reviews%20processing%20with%20LLM%20-%20AI%20Functions%20with%20DE%20-%20Ch07.ipynb) to your workspace and try to complete all Goals / Actions mentioned in that notebook
    - Remove origin lakehouses from Notebook and Add/attach your **goldcurated** (as default) lakehouse 

## Success Criteria

- All success criteria mentioned in the notebook are met
- Table goldcurated.reviewLocations exists with 265 rows and AI columns


![Picture](/images/ch07/ch07-success1.png)


## Solution - Spoilerwarning
> Solutions steps for [Challenge 07](/solutions/ch07/ch07-solution.md)

## Next challenge is:
>[Challenge 08](/challenges/ch08/README.md)