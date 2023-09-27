# DeviceOn Getting Started

[TOC]

## DeviceOn Server Installation

### Setup Standalone Version on Windows (On-premises)

#### Step 1: Install the DeviceOn Package on Your System
>   Copy the installation file (**DeviceOn_Server_Setup_4.7.x.exe**) to your target system and run it as administrator.

![](https://i.imgur.com/JS30xJB.png)

> Click “**Next”** to start the installation process.

![](https://i.imgur.com/fvVIQgY.png)

> Select “**I Accept the terms in the License Agreement**” and click “**Next**”

![](https://i.imgur.com/o36e7FW.png)

> Select the “**Installation Folder**” for DeviceOn Server and click “**Next**”

![](https://i.imgur.com/ncwtXPM.png)

> Enter “**Public IP**” or “**Domain Name**” for this physical/virtual machine and click “**Next**”. This information is required for “Edge Device” connectivity, please make sure your device is reachable under this IP or Domain Name.

![](https://i.imgur.com/wnqHZAb.png)

Note: You can start a Windows command prompt and type “ipconfig” to retrieve your IP address(es) on this physical/virtual machine.

![](https://i.imgur.com/molcVwv.png)

> You will need to configure the HTTP port number that is used for web browser-based access the DeviceOn management portal. The default port is 8080, but you can select any other port as long as it does not conflict with any other application or service. Click “**Next**”.

![](https://i.imgur.com/w12nEKZ.png)

> Configure the password of the relational database (PostgreSQL) that DeviceOn uses to manage account, device, permission, and relation data. The default account name is “postgres” and the password should follow below guideline.

**Strong Password Rules**:

>   *Minimum eight characters, at least one number, one lowercase letter, one uppercase letter, and one special character (Blank character, Backslash(\\), Double quotes(") are prohibited)*

![](https://i.imgur.com/6Pt0v0D.png)

> Configure the password of the NoSQL database (MongoDB) that stores device sensor data. The default account and database is “wisepaas/WISE-PaaS”. This password should also follow strong password rules as outlined above.

![](https://i.imgur.com/qhoJiFI.png)

> Select the database installation path and cache size of MongoDB and click “**Next**”. A larger cache size will result in better performance. For more information on this parameter, please referend to the [official documentation](https://docs.mongodb.com/manual/reference/configuration-options/#storage.wiredTiger.engineConfig.cacheSizeGB)

![](https://i.imgur.com/hK8BDO3.png)

> Enable capped collections for data recycling and set the size for each collections. Capped collections work in a way similar to circular buffers: once collection files its allocated spce, it make room for new documentas by overwriting the oldest documents in the collection. 

![](https://hackmd.io/_uploads/Hka-Oa9L2.png)

:::warning
:warning: The charateristic of capped cannot be disabled, if you enable the collection at first.
:::

> Configure the password of the root account (dummy name “root@advantech.com.tw”) and click “Next”. This root account has the highest permission level and is used to log in to the DeviceOn web service and create other user accounts.

![](https://i.imgur.com/o7Yclnf.png)

> Set up the HTTP service port for Grafana dashboard. The default user name and password is admin/admin. You will be able to modify this at the first login.

![](https://i.imgur.com/lGqr8Ds.png)

> Set up FTP service port for application (App Store), device log storage.

![](https://hackmd.io/_uploads/SkkN365U2.png)

> DeviceOn license is tied to network inteface. The above lists all choose-able network cards informations. To install DeviceOn, you have to determine which network card to be tied to. Choosing a connected and physical interface over a virtual one is highly recommended to prevent potential issue that DeviceOn may encounter in the future.

![](https://hackmd.io/_uploads/rJS5na9Ih.png)

> Click “**Install**” to begin the installation.

![](https://i.imgur.com/4JYbOH6.png)

> Click the “Finish” to exit the program.

![](https://i.imgur.com/KsodnpN.png)

####  Step 2: Launch DeviceOn Web Service Shortcut on Desktop

> Two shortcuts will be generated on the desktop - one is for the DeviceOn web portal and the other one is for the Grafana dashboard.

![](https://i.imgur.com/cy2s5hE.png)

> Click the “**DeviceOn Server**” shortcut in order to launch a browser and to start device operation and management. It is recommended to use **Chrome** for the best user experience.

![](https://i.imgur.com/9pPMIQ4.png)


### Setup Standalone Version on Linux (On-premises)
If you are interested in DeviceOn and used to Linux platform, On-Premise, we also provide an installer for Ubuntu Linux (one of the most popular Linux distribution). This section will guide you how to install DeviceOn on Ubuntu Linux. Note here that:

-   The DeviceOn Ubuntu Linux installer is named something like "**DeviceOn_Server_Ubuntu 18.04_x64_4.7.x.run**". To acquire the installer and ensure having the latest version, please contact us.

-   If you are running the installer with an account other than "root", you should use "**sudo**" command to obtain higher privileges, or the installation may fail at any step.

 #### Step 1: Open a terminal

> The installer runs in CLI (Command Line Interface) mode. As such, open a terminal preferable for you.

 #### Step 2: Copy the installer to target host

> Use the way you like to copy the installer to the target host.

 #### Step 3: Set the installer as executable
 
>　In the terminal, run "**chmod 0755 DeviceOn_Server_Ubuntu 18.04_x64_4.7.x.run**" so that the installer as an executable file under Ubuntu Linux.
 
 #### Step 4: Running the installer

> Change your working directory to where the installer is and run "**./DeviceOn_Server_Ubuntu 18.04_x64_4.7.x.run** ". You may need to run "**sudo ./DeviceOn_Server_Ubuntu 18.04_x64_4.7.x.run** " to acquire higher privileges if you were logged in as a normal user.

 #### Step 5: Answering some questions

> Throughout installation process, it's necessary to answer some questions to complete the installation:

A. The password of user **postgres** to login PostgreSQL database.

![](https://i.imgur.com/LL5Tmd1.png)

When you run into this step the question shows like above. Just input the password you would like to use to login PostgreSQL database for “**postgres**” account.

B.  The password of user “**wisepaas**” to login MongoDB database.

![](https://i.imgur.com/WdqbHEw.png)

When you run into this step the question shows like above. Just input the password you would like to use to login MongoDB database for “**wisepaas**” account.

C.  The valid IP or host name of the target host.

![](https://i.imgur.com/4MbtqBl.png)

When you run into this step the question shows like above. Just input the IP address of the target host. A hostname (even a FQDN) is also acceptable if you are sure that agents can connect to via the name you provide.

D.  If turn MongoDB capped functionality on or not.

![](https://i.imgur.com/BKIuECd.png)

When you run into this step the question shows like above. Just input “**yes**” or “**no**” to enable or disable “capped” functionality. If you answer “yes”, a subsequent question followed to ask you “how much capped size, in MB, to be used? “. Just input the size, in MB, you want to use in “capped” functionality in MongoDB database.

[Capped collections](https://docs.mongodb.com/manual/reference/glossary/#term-capped-collection) are fixed-size collections that support high-throughput operations that insert and retrieve documents based on insertion order. Capped collections work in a way similar to circular buffers: once a collection fills its allocated space, it makes room for new documents by overwriting the oldest documents in the collection.

E.  The password of user “**root\@advantech.com.tw**” to login DeviceOn portal, and the rule should follow below guideline.

**Strong Password Rules**:

*Minimum eight characters, at least one number, one lowercase letter, one uppercase letter, and one special character (Blank character, Backslash(\\), Double quotes(") are prohibited)*

![](https://i.imgur.com/86Y2aop.png)

When you run into this step the question shows like above. Just input the password you would like to use to login DeviceOn portal for “**root\@advantech.com.tw**” account.

Finally, a workable DeviceOn server should be there the target host. Open a browser and input http://{IP-USED-IN-QUESTION-C}, you should see the DeviceOn login page.

## Cloud Deployment from Azure/AWS

### Deploy DeviceOn from Azure Marketplace

#### Step 1: Deploy DeviceOn from Azure Marketplace
> Please enter to [Azure Marketplace](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/advantech.deviecon_on_windows_vm_v1?tab=Overview) and click "GET IT NOW"

![](https://i.imgur.com/n2cx2uY.png)

> Sign in your Account

![](https://i.imgur.com/V62g7X9.png)

> You will enter to Azure portal and please click on **Start with pre-set configuration** to be quick deployment

![](https://i.imgur.com/JSYtv3q.png)

> This page includes our recommended configuration for DeviceOn Server, you can just click on **Continue to create VM**, following the default setting.

![](https://i.imgur.com/u8mlMGw.png)

> In this page, please note that the red star parts info are MUST.
  - Select your Azure Subscription
  - Create a new resource group or pick-up
  - Define your Virtual Machine name
  - Select the Virtual Machine region, you can pick one which is the nearest one to your location
  - Select **DeviceOn** as default Image
  - Here you need to create the **Username** and remember the **Password** which is to secure this DeviceOn VM (**Remote Desktop Used**)

> Then click Next to move on, or you can directly click “Review + Create”, then all the following items will be set as default.

![](https://i.imgur.com/OXlbgE9.png)

> By using the default disk Premium SSD, then click **Next** to move on.

![](https://i.imgur.com/McaKkY1.png)

> Set the network interface
 - Select the one you just defined in previous grouping or create new

![](https://i.imgur.com/2YOJwUh.png)

> In this page, you can schedule the power management of VM for reducing the unnecessary cost
 - Auto shut-down schedule (please make sure the time zone is correct)
 - Email account

![](https://i.imgur.com/BvBqxRe.png)

> Basically, you can click **Review + Create** if you don’t need advanced setting. VM will be validating and creating within 5 minutes.

![](https://i.imgur.com/eL2Hn47.png)

> A few minutes later, you can see below picture that VM has been created.

![](https://i.imgur.com/08dKVNf.png)
![](https://i.imgur.com/VAExuMR.png)

> Click “Go to resource” to review more detail.

![](https://i.imgur.com/zSN699M.png)

> After deployment, please click on "**Connect**" to remote login to VM via Microsoft Remote Desktop. The password that you configure on Step 1. There is a **Quick Start Guide** on the desktop and include the random password to access DeviceOn Web Service.

![](https://i.imgur.com/3du0D3U.png)

![](https://i.imgur.com/vsa89oo.png)

#### Step 2: Access DeviceOn Web Service
> Please copy the public address first from Azure VM, and open Microsoft Edge or other browsers to paste the IP address (Suggest using Microsoft Edge for best experience)

![](https://i.imgur.com/jWU2qjK.png)

![](https://i.imgur.com/kigRxPW.png)

> Enter to DeviceOn main page, please follow the steps to finish the basic questionnaire and then confirm the related policy and agreement. (As below pictures)

![](https://i.imgur.com/BwrgUsw.png)

![](https://i.imgur.com/3nGwybM.png)

> Enter the default account and password (through **Quick Start Guide**)
 - Account: root@advantech.com.tw
 - Password: ********

*Note: Please remember to modify your own password after log-in.*

![](https://i.imgur.com/FVuGMo5.png)

### Deploy DeviceOn from AWS Marketplace

 #### Step 1: Deploy DeviceOn from AWS Marketplace

> Please enter to [AWS Marketplace](https://aws.amazon.com/marketplace/pp/B08972SVHN) and click on the "**Continue to Subscribe**"

![](https://i.imgur.com/OVj1tMU.png)

> Sign in your AWS account.

![](https://i.imgur.com/UBJvjgx.png)

> Click on the "**Continue to Configuration**"

![](https://i.imgur.com/aaTNrmc.png)

> Congigure this DeviceOn software and click on the "**Continue to Launch**"
1. Deleviery Method: **64-bit (x86) Amazon Machine Image (AMI)**
2. Software Version: **4.2.3 (May, 22, 2020)**
3. Region: Select the Region that the nearest to your location.

![](https://i.imgur.com/fs1zc0o.png)

> Launch this DeviceOn software
1. Choose Action: **Launch from Website**
2. EC2 Instance Type: **t2.large** (Recommand select higher than t2.large for better performance.)
3. VPC Settings: **default vpc**
4. Subnet Settings: **default subnet**

![](https://i.imgur.com/EatuBTI.png)

5. Security Group Settings:
> Create a security group based on our setting, enter name, description of this security group.

![](https://i.imgur.com/DCWfS7W.png)

![](https://i.imgur.com/apGQIDK.png)

6. Key Pair Settings
> Create a key pair in EC2, enter name and select file format as "**pem**". The key pair used to get the password of Remote Desktop.

![](https://i.imgur.com/lCtEn93.png)

![](https://i.imgur.com/VcHMx16.png)

![](https://i.imgur.com/7WRCvS6.png)

![](https://i.imgur.com/FecVIeA.png)

7. Click on the "**Launch**" to deploy EC2 machine.

![](https://i.imgur.com/igQQkFP.png)


 #### Step 2: Login EC2 Virtual Machine
> After deployment, please enter to AWS EC2 Console, select your instance and get the connect remote desktop and password.

![](https://i.imgur.com/xeywwYf.png)

![](https://i.imgur.com/oSVchZB.png)

> In order to retrieve your password you will need to specify the path of this **Key Pair (DeviceOnKey.pem)** on your machine.

![](https://i.imgur.com/E8fmZt3.png)

> There is a **Quick Start Guide** on the desktop and include the random password to access DeviceOn Web Service.

![](https://i.imgur.com/EtVnq9O.png)

![](https://i.imgur.com/ARMqoHI.png)

 #### Step 3: Login DeviceOn Web Service

> Enter to DeviceOn main page (Suggest using Microsoft Edge or Google Chrome for best experience), please follow the steps to finish the basic questionnaire and then confirm the related policy and agreement. (As below pictures)

![](https://i.imgur.com/vy4VZtw.png)

![](https://i.imgur.com/LDKhjNd.png)

> Enter the default account and password (through **Quick Start Guide**)
 - Account: root@advantech.com.tw
 - Password: ********

**Note: Please remember to modify your own password after log-in.**

![](https://i.imgur.com/9Rceh6F.png)


### Deploy Enterprise Version on Azure Kubernetes

> This document tries to describe, and guide you, how to deploy DeviceOn on Azure cloud. The version is focused on Azure components to integrate to provide security, scalability and high availability.

> Microsoft Azure provides lot’s of cloud services with security, scalability and high available. Based on Azure components, DeviceOn could focus on functionalities for device management and data acquisition. We fully integrate with below services:

- <font color=gray>Azure Application Gateway (WAF protection and traffic load balancer), Optional</font>
- Kubernetes (Container Management)
- <font color=gray>Azure AD (Authentication), Optional</font>
- Cosmos DB, Azure PostgreSQL (Database)
- Azure Function, IoTHub (Secure Device Connection)
- Stream Analytics, Event Hub, Service Bus (Message Bus and Filter)

> When you build on Azure’s secure foundation, you accelerate your move to the cloud by achieving compliance more readily, allowing you to enable privacy-sensitive cloud scenarios, such as financial and health service, with confidence.

![](https://i.imgur.com/pgmdIJI.png)

#### Prerequisites
To achieve the goal to deploy DeviceOn, some resources have to be acquired and preconditions must be met as well.

- An active Azure subscription.
- An **Azure CLI** installed on your laptop, please refer to [Azure documentation](https://docs.microsoft.com/zh-tw/cli/azure/install-azure-cli) to download and setup. The Azure CLI is available to install in Windows, macOS and Linux environments. It can also be run in a Docker container and Azure Cloud Shell. 

Second option, if you don't want to install Azure CLI, you can also adopt **Azure Cloud Shell**, please refer to [Microsoft documentation](https://docs.microsoft.com/en-us/azure/cloud-shell/overview).

#### Step 1: Obtain the following three parameters for deployment
  - Application ID
  - Password (Client Secrets)
  - Tenant ID

**a). Sign into your Azure account through Azure CLI**
Use any way you prefer to open a Command Prompt and enter
```language
az login
```
![](https://i.imgur.com/d00SkWK.png)


:::info
Note: If the CLI can open your default browser, it will do so and load a sign-in page. Otherwise, you need to open a browser page and follow the instructions on the command line to enter an authorization code after navigating to https://aka.ms/devicelogin in your browser. Sign in with your account credentials in the browser.
:::

**b). Select your Subscription**
After you login, the terminal console will list all subscriptions, please select the subscription that you would like to deploy.

```language
az account set --subscription <SUBSCRIPTION_NAME>
```
If you don’t know which subscriptions you have, you can use below command to list all the subscriptions, and determine whether the subscription has been selected according to **isDefault**.

```language
az account list --output table
```
![](https://i.imgur.com/pFgQCzp.png)

**c). Create a service principal**
The last step to create a service principal and generate these parameters. (**1. Application ID**, **2. Password** and **3. Tenant ID**)
```language
az ad sp create-for-rbac --name <SERVICE_PRINCIPAL_NAME> --role "owner"
```
![](https://i.imgur.com/u9l4dVX.png)

If you want to further limit the scope of service principle to resource group, please try to create the resource group, and then use the following command to limit.
```language
az ad sp create-for-rbac --name <SERVICE_PRINCIPAL_NAME> --role "owner" --scopes /subscriptions/{SubID}/resourceGroups/{ResourceGroup1} 
```

#### Step 2: Deploy DeviceOn via Custom Template

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3a%2f%2fmarketplacetemplate.blob.core.windows.net%2fdeviceon%2fDeviceOn.json" target="_blank" title="Deploy DeviceOn to Azure"><img src="https://i.imgur.com/vnjklD7.png" border="0"></a>

**a). Open the Azure Portal**

This will open the Azure Portal (portal.azure.com) in your subscription and create the required resources.

   ![](https://i.imgur.com/a58HAoa.png)

**b). Enter the following values:**

    | **Name**                   | **Value**                                                                                                                                                                                                   |
    |----------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
    | Resource Group             | Select the resource group name you created in the last section.                                                                                                                                             |
    | Region                     | Select a location for the resource group. For example, Southeast Asia.                                                                                                                                      |
    | Application Id             | The application Id is obtained from Step 1.                                                                                                                                                                 |
    | Password                   | The password is obtained from Step 1.                                                                                                                                                                       |
    | Tenant Id                  | The tenant Id is obtained from Step 1.                                                                                                                                                                      |
    | Email                      | After deployment, the result/progress will be sent to this email                                                                                                                                            |
    | Location                   | Enter the location name according to the data center. for examle, Asia East(**eastasia**), Asia Southeast(**southeastasia**), Japan East(**japaneast**), US East(**eastus**), Europe North(**northeurope**) |
    | IoTHub Sku                 | S1/S2/S3, the default is **S1**, you could adjust the tier from Azure Poral, if need.                                                                                                                       |
    | IoTHub Unit                | default is 1                                                                                                                                                                                                |
    | Activate Key               | Advantech hardware connection, enter **N/A** (free support for 1000 Advantech devices), or please [contact us](mailto:DeviceOn.Support@advantech.com) to purchase license key for Non-Advantech devices.    |
	| AKS Max Node Count         | Maximum number of Kubernetes nodes to auto-scaling                                                                                                                                                          |
	| Utc Value                  | Fix value for generating unique string                                                                                                                                                                      |


**c). Select *Review + create***

**d). Validation and start to create.** 

![](https://i.imgur.com/kkzM0I0.png)


**e). Deployment Process**
The entire deployment process takes about **30 minutes**. After completion, you will receive a mail notification. The content of the mail includes the DeviceOn web *Service IP* and login **Account password**.

![](https://i.imgur.com/LNQrNOS.png)
![](https://i.imgur.com/7VHwAOv.png)

   Assuming that your mail is intercepted/block or not received due to mail server filters, we will synchronously write this information to the **Azure Blob Log** container. Go to your **resource group** (you entered at the stage of deployment) **storage account -> container -> Log -> ServerInformation.log**. If the container has not been created, please wait a few minutes for initialization.

![](https://i.imgur.com/yMcLHt5.png)
![](https://i.imgur.com/mdSF0C6.png)
![](https://i.imgur.com/PhbtkV8.png)

**f). Result**
There are two resource group generated on your subscription, one is you entered at the stage of deployment, which include the services such as: AKS, IoTHub, EventHub, Stream Analytics, CosmosDB, PostgreSQL...etc. Another resource group name prefix name starts with **MC**, that contains AKS VM node.

## DeviceOn Client (WISE-Agent) Installation

### Device Onboarding on Windows

 #### Step 1: Onboarding Your Device to IoT Device Platform (DeviceOn)
> Once your DeviceOn server installed, you could start to follow steps to onboarding your edge device.

 **a). Log in to the DeviceOn Cloud Service with Your Account and Password**

![](https://i.imgur.com/cs5FCGe.png)

 **b). Download WISE-Agent and Connection Configuration (Agent.config)**
> At the first login, the “Device Onboarding” dialog will pop up automatically. Please click “Download” to get the latest version of WISE-AgentSetup.exe and the respective connection configuration. (Agent.config)

 ![](https://i.imgur.com/4hWZtwm.png)

> Click “Next” to wait for connecting devices.

 ![](https://i.imgur.com/YeCunXc.png)

 **c). Set up Your Local Device**

> Copy those two files (WISE-AgentSetup_1.x.x.exe and Agent.config) to the target device and launch “WISE-AgentSetup_1.x.x.exe” as administrator.

![](https://i.imgur.com/qQCt3HN.png)

> Click “Next” to set up the WISE-Agent program.

![](https://i.imgur.com/9RCnqbN.png)

> Select “I Accept the terms in the License Agreement” and click “Next”

![](https://i.imgur.com/laMZIPS.png)

> When the “WISE-AgentSetup_1.x.x.exe” program detects a cloud connection configuration file (Agent.config) in the same folder, “Quick Mode” as shown in this dialog will be available. For “Quick Mode”, the installation path is fixed to “C:\Program Files (x86)\Advantech\WISE-Agent”. If you would like to adjust the installation location, please select “Advanced Mode”.

**Quick Mode:**

![](https://i.imgur.com/f2aOqHT.png)

**Advanced Mode:**

![](https://i.imgur.com/wlpVEmm.png)

>Set up the cloud connection configuration (Credential URL & IoTKey). This information can be retrieved from the DeviceOn web portal as shown in Step 2, and click “Next”.

* “Zero-touch onboarding”: Only supported on Advantech platforms with SUSI Driver and pre-configuration on the provisioning server.
* “Assign to User Account”: Each account has its own connection IoTKey. If checked, the device will be assigned to this account automatically.
* “Enable SSL”: The communication between WISE-Agent and DeviceOn Cloud is MQTT. If checked (default setting), all the messages and content are SSL encrypted (MQTT SSL port: 8883). Otherwise, port 1883 is used for MQTT without SSL.

![](https://i.imgur.com/1YhxGur.png)

> WISE-Agent supports remote desktop through built-in UltraVNC. You can manually specific the location of your own UltraVNC installation if preferred. If you do not want the remote desktop feature to be available, please select “Disable KVM Connection”.

![](https://i.imgur.com/ZvxCMrx.png)

> WISE-Agent integrates Intel AMT (Intel Active Management Technology) for remote power management (Power Up, Down, Cycle and Reset) as well as remote desktop access, even in case the operating system has crashed. However, this feature requires hardware support (Intel Core i5, i7) and the target device needs to be on the same local network as the DeviceOn server. Please pre-configure iAMT, enable it in the device’s BIOS and provide the account and password information in this dialog if you would like to enable iAMT based remote control features.

![](https://i.imgur.com/L0uS1Ke.png)

> Click “Install” to begin the installation.

![](https://i.imgur.com/hydRye3.png)

> WISE-Agent requires the Microsoft Visual C++ Redistributable 2008, 2013, 2015 x86 packages, which will be downloaded from the Internet and set up during the installation process. If you are in an environment with limited or no Internet access, please download the “Agent Dependency Package” through an Internet connected device and install this package first.

![](https://i.imgur.com/R1cJlI8.png)

 **d). Set up Your Local Device** 

> Click on the “WISE-Agent” icon on the Windows Desktop to open the WISE-Agent user interface.

![](https://i.imgur.com/HXzoZzQ.png)

> If the status shows “Disconnected”, please make sure your network settings are configured correctly and that you have access to the DeviceOn server-side application, either located in a public cloud (Microsoft Azure, AWS) or on premise (standalone server version) depending on deployment scenario. Then, please click the “Connect” button to try to reconnect.

 **e). Grouping Your Devices**

> Once the device connects, the DeviceOn user interface will move on to the device grouping page, where the device group for these devices can be selected.

![](https://i.imgur.com/JkXnKh7.png)

> There is a “Default” group that can be used, or other groups for this device can be created after checking “Advanced options”. Click “Confirm” to start device management.

![](https://i.imgur.com/5Jy0Dz9.png)


 **f). Start Device Management**

> By default, two “Real-time Actions” are created for a group, one is “Screenshot” and the other one is “Reboot”. The overview page further shows the online status of registered.

![](https://i.imgur.com/30uFMjk.png)

### Device Onboarding on Linux
Once your DeviceOn server installed, you could start to follow steps to onboarding your edge device.

 **a). Log in to the DeviceOn Cloud Service with Your Account and Password**

![](https://i.imgur.com/cs5FCGe.png)

 **b). Download WISE-Agent and Setup on your Device**
> Please try to get and download the latest version of [WISE-Agent installer](https://eiot.blob.core.windows.net/deviceon/WISE-Agent%20for%20v5.0.zip) for Linux version from [technical portl](https://docs.wise-paas.advantech.com/en/Guides_and_API_References/ApplicationServices/1564727799415968385/1564727878040194797/v1.0.2) or [landing page](https://campaign.advantech.online/en/DeviceOn/index.html).

 **c). Open a terminal**

>The installer runs in CLI (Command Line Interface) mode. As such, open a terminal preferable for you.

 **d). Copy the installer to target host**

>Use the way you like to copy the installer to the target host.

 **e). Set the installer as executable**

>In the terminal, run “**chmod 0755 wise-agent-Ubuntu 18.04 x86_64-1.x.x.0.run**” so that the installer as an executable file under Ubuntu Linux.

![](https://i.imgur.com/QFAf258.png)

 **f). Running the installer**
 
> Change your working directory to where the installer is and run "**./wise-agent-Ubuntu 18.04 x86_64-1.x.x.0.run**". You may need to run "**sudo ./wise-agent-Ubuntu 18.04 x86_64-1.x.x.0.run**" to acquire higher privileges if you were logged in as a normal user.

![](https://i.imgur.com/gU7Dxvu.png)


 **g). Start WISE-Agent and Connect to DeviceOn**
 
> Change your directory to /usr/local/AgentService and run sudo ./setup.sh to answer connection information, such as credential URL, IoTKey, Device Name and etc.

![](https://i.imgur.com/DfOk1Vz.png)

* Zero-touch onboard is a zero-configuration and quick connection mode for a special purpose. The default is disabled (n).
* Enter Credential URL and IoT Key that information could retrieve from the DeviceOn portal.

![](https://i.imgur.com/JkQLu2M.png)


* Assign device to User Account: You can bind the target device into a “Default” group in your account on the portal automatically.
* Enable TLS: Turn ON/OFF the TLS/SSL mode.
* Input Device Name: Give your device name and show it on the portal.
* Input AMT ID and password: If your device support Intel AMT, please enter AMT ID and Password to enable these functions.
* Select KVM Mode [0:default, 1:Custom VNC, 2:disable]: User can use our default VNC to support the Remote Desktop function by entering 0 and give a listen port if you don’t want to use the default port. Second, select Custom Mode, if they already have a VNC server by entering 1 and provide the listen port and password. To disable the KVM function by entering 2.

> When you run into this step the question shows like above, device is connected and under your account. To confirm the connection status via **agent_status**: 
0: Disconnect, 1: Connected, 2: Connecting.
```typescript
cat /usr/local/AgentService/agent_status
```
> The connection parameters are stored into agnet_config.xml, if you would like to update or modify, please edit the configuration and restart the service (**saagent.service**)


 **h). Start Device Management**

> By default, two “Real-time Actions” are created for a group, one is “Screenshot” and the other one is “Reboot”. The overview page further shows the online status of registered.

![](https://i.imgur.com/30uFMjk.png)


