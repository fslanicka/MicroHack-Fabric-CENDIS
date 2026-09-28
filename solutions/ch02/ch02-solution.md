# Ch02: Solution - Ingest data with data pipelines and shortcuts 

### Actions
--- 
### Create Pipeline: Ingest Green Taxi 2015

The goal is to copy the files from the remote location into your lakehouse. This solution shows the Pipeline + Copy Data activity however you can choose different method

1) Create New Item in your previously created Workspace and choose Pipeline from the list

![](../../images/ch02/ch02-image-c402-i54pmg4.png)

2) Give your pipeline some proper name

![](../../images/ch02/ch02-image-c402-i56pmg4.png)

3) The new pipeline canvas is created with several wizards at your disposal. You can choose some of them however to create a clean canvas for pipeline activity, choose (...) *Pipeline activity* :-) and from the suggested steps, choose the *Copy data* option:

![](../../images/ch02/ch02-image-c502-i0pmg4.png)

4) 

The pipeline canvas is shown and Copy data activity is added onto it. On this canvas you can chain various options how to copy and transform the data. We will only copy the data from the source and place it into your lakehouse. Fill in the following inputs.


| **Item** | **Property** | **Value** |
|:--------------|:-------------|:----------|
| **Source** | Type | Azure Blob Storage |
| | URL | `https://stfabricmicrohacksw.blob.core.windows.net/` |
| | Auth. kind | Sign-in with your current account |
| | Format | **Binary** |
| **Destination** | Type | Lakehouse |
| | Name | **bronzerawdata** |
| | File Path | **Landing/GreenTaxi2015** |
| | Format | **Binary** |

**Source:**

![](../../images/ch02/ch02-image-c502-i23pmg4.png)

![](../../images/ch02/ch02-image-c102-i55pmg4.png)

![](../../images/ch02/ch02-image-c502-i26pmg4.png)

**Destination:**

![](../../images/ch02/ch02-image-c502-i27pmg4.png)

5) Don't forget to RUN the created pipeline and make sure it finishes successfully.

### Create Shortcut in your Lakehouse 

1) You have copied the taxi data from 2015 directly into your lakehouse - this time, you can just create shortcut of a different data (taxi data from 2023) and link them onto one workking place. Crete the shortcut in **Files > Landing** to **2023** Folder

So locate your lakehouse, where the Shortcut should appear:

![](../../images/ch02/ch02-image-c502-i31pmg4.png)

2) Within the desired folder structure create a new shortcut:

![](../../images/ch02/ch02-image-c502-i32pmg4.png)

3) The source data are stored on the following source:

| **Property** | **Value** |
|:-------------|:----------|
| **Service Type** | Azure Data Lake Gen2 |
| **URL** | `https://adlstfabricmicrohacksw.dfs.core.windows.net/` |
| **Authentication kind** | Organizational account |


![](../../images/ch02/ch02-image-c502-i33pmg4.png)

![](../../images/ch02/ch02-image-c102-i59pmg4.png)

![](../../images/ch02/ch02-image-c502-i39pmg4.png)

Skip the data transformation and finalize creating the shortcut.

Finally, you can see this structure in your lakehouse, while the folder *2023* resides elsewhere and the icon shows it acts as a Shortcut.

![](../../images/ch02/ch02-image-c502-i42pmg4.png)

