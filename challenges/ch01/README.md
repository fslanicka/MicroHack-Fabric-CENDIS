# Ch01: Prepare the infrastructure for Microsoft Fabric

> [!NOTE]
> 
> Back to [Readme](/README.md)

## Goal

In this challenge, you will prepare the Microsoft Fabric environment for the upcoming challenges. Each participant should get their own Microsoft account for Azure and Office 365. Using your account, create a Fabric capacity and workspace, attach the capacity to your workspace, and create the first lakehouse for the [bronze layer](/challenges/lakehouse-layers.md) of the [medallion architecture](https://www.databricks.com/glossary/medallion-architecture).

## Actions

- Deploy MS Fabric Capacity into pre-defined Resource Group "**rg-MicroHackFabricCapacities**" and **any available region**
	- Name: **yoursurname0fabric** with **size F4** 
	- e.g. novak0fabric
- Create Workspace in MS Fabric: **YourSurname NY Taxi Analysis [DEV]**
	- e.g. Novak NY Taxi Analysis [DEV] 
- Add **your** Fabric Capacity to **your** Workspace.
- Change Spark settings: **Use 1 node only**
- Create the 1st lakehouse: **bronzerawdata**

## Success Criteria

- MS Fabric Capacity is running.
- Workspace is ready to solve your workloads.
- The 1st Lakehouse and SQL analytics endpoint is deployed and you can connect

![Picture](/images/ch01/ch01-success1.png)

## Solution - Spoilerwarning
> Solutions steps for [Challenge 01](/solutions/ch01/ch01-solution.md)

## Next challenge is:
>[Challenge 02](/challenges/ch02/README.md)
