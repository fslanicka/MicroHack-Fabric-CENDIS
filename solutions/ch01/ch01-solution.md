# Ch01: Solution - Prepare MS Fabric for your workloads

## Actions
---
### Deploy MS Fabric Capacity: **yoursurname0region** with **size F4**.
- search for the Fabric capacities within Azure portal
- using the wizard, create the capacity according to the picture below
- place it within whatever region which suits your needs

![](../../images/ch01/ch01-image-c201-i10pmg2.png)

---
### Create Workspace in MS Fabric: **YourSurname NY Taxi Analysis [DEV]**
	- e.g. Novak NY Taxi Analysis [DEV]
- go to Microsoft Fabric - https://app.fabric.microsoft.com/
- sign in with your M365 account ```UserXX@fabric.microhack.org```

![](../../images/ch01/ch01-image-c301-i29pmg2.png)

- create workspace as instructed

![](../../images/ch01/ch01-image-c301-i32pmg2.png)

During the same process assign previously created Fabric Capacity to your new workspace.

![](../../images/ch01/ch01-image-c301-i33pmg2.png)

---
### Change Spark settings: **Use 1 node only**

- reach the newly created workspace settings

![](../../images/ch01/ch01-image-c301-i36pmg2.png)

- find the settings related to Spark and modify the nodes setting accordingly

![](../../images/ch01/ch01-image-c301-i37pmg2.png)

---
### Create the 1st lakehouse: **bronzerawdata**

- return to your created newly created workspace and create new item

![](../../images/ch01/ch01-image-c301-i40pmg2.png)

- this option lists all the various items you can create within the Fabric environment. Seach for the **Lakehouse** option (you can favourite it if needed for future)

![](../../images/ch01/ch01-image-c301-i41pmg2.png)

- create the new lakehouse with the proper name

![](../../images/ch01/ch01-image-c301-i42pmg2.png)

---
