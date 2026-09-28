# Ch06: Create a master pipeline for orchestration
> [!NOTE]
> 
> Back to [Readme](/README.md)

## Goal
Now, let's focus on orchestration. Considering we have only two tables ingested by two pipelines and processed by three notebooks, imagine a scenario where you need to ingest and process tens or hundreds of tables, files, or data sources and manage dependencies between them. In such cases, the most efficient approach is to build and prioritize a data pipeline for the orchestration workflow. 

## Actions
- Create master Orchestration Pipeline 
	- Add pipeline parameter: Year (Array, Default value = ["2015", "2023"])
	- Build following workflow:
		- Run in parallel:
			- Invoke pipeline: Ingest Green Taxi 2015 
				- On Success, run: Invoke Load Green Taxi 2015
			- Run Dataflow: Load Green Taxi Discount
			- Run Notebook: Load Green Taxi 2023
		- On Success, run: ForEach activity: Sequential | Parallel for @pipeline().parameters.Year
			- Run Notebook: Transform Bronze to Silver
				- Add Base parameter p_year binded to ForEach items.
		- On Success: Run Notebook: Transform Silver to Gold 
- Run pipeline

## Success Criteria
- Pipeline finishes successfully

![Picture](/images/ch06/ch06-success1.png)

## Solution - Spoilerwarning
> Solutions steps for [Challenge 06](/solutions/ch06/ch06-solution.md)

## Next challenge is:
>[Challenge 07](/challenges/ch07/README.md)