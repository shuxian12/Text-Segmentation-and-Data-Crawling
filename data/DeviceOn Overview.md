# DeviceOn Overview

[TOC]

## What's DeviceOn?

A surge in market demand for Industrial IoT products has rapidly increased the number of connected devices that are currently deployed and managed across different locations. It is essential to effectively manage, monitor, and control thousands of connected devices while ensuring uninterrupted service. Devices must work properly and securely after they have been deployed - without requiring frequent visits from service technicians. Customers require secure access to their devices in order to detect, troubleshoot, and undertake time-critical actions. 

![](https://hackmd.io/_uploads/BJn-5DTU3.png)

With Advantech’s DeviceOn, users can swiftly utilize onboard devices, efficiently monitor device health status, and securely send software and firmware updates over-the-air (OTA) on-site and remotely at scale.

Advantech’s brand-new designed IoT device operations and management App solution gives users a transformational plug-and-play experience. Beginning with onboarding devices, DeviceOn’s zero-touch IoT tech seamlessly registers Advantech hardware systems with identity security and field site settings. A fast and simple setup helps provide instant intelligent edge onboarding, data acquisition, and status visualization at the device operations center. Power on/off, troubleshooting, and mission-critical actions are available at the tap of a button for quick and easy access. OTA software updates itself securely by sending software patch, firmware, software, and configuration updates through batch provisioning. The App is designed to ensure maximum efficiency in IoT device operations and management.

![](https://i.imgur.com/fyw9a2k.png)

Power up your IoT devices with this hardware and software integrated solution. Get the most out of the DeviceOn’s features with predictive device maintenance like IPC HDD lifecycle prediction, analytics-based dashboard and automated event alerts. In bringing artificial intelligence to your IoT needs, Advantech delivers improved risk management, faster daily operations, and better device performance while improving business value and intelligence through the extraction of big data.

DeviceOn is compatible with all Advantech hardware systems and works on popular platforms and services like the WISE-PaaS public/private cloud, Microsoft Azure, VM on-premises, and Kubernetes. Get your DeviceOn version on the WISE-PaaS Marketplace and kick-start your new and improved device operations and management experience.


## Feature Highlight

There is a summary for these feature highlights on different operation system and hardware requirement.

|                                       | **DeviceOn Feature Highlight**                                                                                                                                                           | **Windows 7, 8, 10**        | **Ubuntu 18.04/20.04 x64** | **Ubuntu 18.04 on Nvidia Jetson** | **Linux on RISC (Yocto)**       | **Android on RISC</br>RSB-4710 (RK3399)** |
|---------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------|----------------------------|-----------------------------------|---------------------------------|-------------------------------------------|
| **Standard Offering (Cloud Feature)** | **Authentication** <br/><ul><li>Two-Factor Authentication, 2FA</li><li>Basic (base64) & JWT</li><li>LDAP & Azure AD Domain Service</li></ul>                                             | ●                           | ●                          | ●                                 | ●                               | ●                                         |
|                                       | **Role-Based Access Control** <br/><ul><li>Account & Role Management</li><li>Device & Device Group Management</li></ul>                                                                  | ●                           | ●                          | ●                                 | ●                               | ●                                         |
|                                       | **Notification & Alert Service** <br/><ul><li>Event Logs</li><li>Mail, SMS, LINE, WeChat, Telegram, Teams, Slack, Webhook</li></ul>                                                      | ●                           | ●                          | ●                                 | ●                               | ●                                         |
|                                       | **Data Management** <br/><ul><li>Device Real-time & Historical Data Monitoring</li><li>1-Click to Data Visualization (Grafana)</li></ul>                                                 | ●                           | ●                          | ●                                 | ●                               | ●                                         |
|                                       | **Operation Management** <br/><ul><li>Batch Control & Statistical Analysis</li><li>Statics System Report</li><li>Task Scheduled</li><li>Device Map (Openstreet, Google, Baidu)</li></ul> | ●                           | ●                          | ●                                 | ●                               | ●                                         |
| **Remote Control**                    | Device Zero-touch Onboarding                                                                                                                                                             |                             | ● Azure IoT Edge           |                                   |                                 |                                           |
|                                       | Device Data Zero-Downtime                                                                                                                                                                | ●                           | ●                          | ●                                 | ●                               |                                           |
|                                       | Terminal                                                                                                                                                                                 | ●                           | ●                          | ●                                 | ●                               |                                           |
|                                       | Screenshot                                                                                                                                                                               | ●                           | ●                          | ●                                 | ●                               | ●                                         |
|                                       | Remote Desktop                                                                                                                                                                           | ●                           | ●                          | ●                                 | ●                               | ●                                         |
|                                       | Power Control (On/Off, Reboot, Sleep, Hibernate)                                                                                                                                         | ●                           | ●                          | ◐                                 | ◐                               | ◐ Reboot Only                             |
|                                       | System Backup/Recovery, Protection                                                                                                                                                       | ●                           |                            |                                   |                                 |                                           |
|                                       | Device Threahold Detection (Rule-based Engine)                                                                                                                                           | ●                           | ●                          | ●                                 | ●                               |                                           |
|                                       | App Store (OTA), Software, Firmware Provisioning                                                                                                                                         | ●                           | ●                          | ●                                 | ●                               | ◐                                         |
|                                       | Process Monitoring & Control (Terminate, Restart, Launch)                                                                                                                                | ●                           | ●                          | ●                                 | ●                               |                                           |
|                                       | Container Management (Start, Stop, Monitoring, Deploy)                                                                                                                                   | ●                           | ●                          | ●                                 | ●                               |                                           |
|                                       | Audio Volume Control                                                                                                                                                                     | ●                           |                            |                                   |                                 | ●                                         |
|                                       | Intel AMT Remote Control and Management                                                                                                                                                  | ●                           | ●                          |                                   |                                 |                                           |
|                                       | Intel IPMI Remote Control and Management                                                                                                                                                 | ●                           | ●                          |                                   |                                 |                                           |
| **Advantech Hardware Support**        | Hardware Watchdog Monitoring                                                                                                                                                             | ●                           | ◐                          |                                   |                                 | ●                                         |
|                                       | Hardware GPIO Control & Customized (via **SUSI Driver**)                                                                                                                                 | ●                           | ●                          |                                   |                                 |                                           |
|                                       | Brightness & Backlight Control                                                                                                                                                           | ●                           | ●                          |                                   |                                 | ●                                         |
|                                       | Hardware Sensor Monitoring (via **SUSI Driver**)                                                                                                                                         | ●                           | ●                          |                                   | ◐                               |                                           |
|                                       | BIOS Update                                                                                                                                                                              | ●                           | ●                          |                                   |                                 |                                           |
|                                       | BSP Update                                                                                                                                                                               |                             |                            |                                   | ●                               | ●                                         |
|                                       | Advantech Industrial SQ Flash/RAM Remote Management & Monitoring                                                                                                                         | ●                           |                            |                                   |                                 |                                           |
|                                       | Advantech iBMC, Out-of-Band Remote Management (Cross-network)                                                                                                                            | ●                           |                            |                                   |                                 |                                           |
|                                       | Advantech Industrial Display, On-Screen Display (OSD) Management                                                                                                                         | ●                           |                            |                                   |                                 |                                           |
| **Windows 10 Lockdown Features**      | USB Drive Block                                                                                                                                                                          | ● Win10 LTSB, LTSC Only     |                            |                                   |                                 |                                           |
|                                       | Keyboard Lock & Filter                                                                                                                                                                   | ● Win10 LTSB, LTSC Only     |                            |                                   |                                 |                                           |
|                                       | Touch Screen & Gesture Lock                                                                                                                                                              | ● Win10 LTSB, LTSC Only     |                            |                                   |                                 |                                           |
|                                       | Windows Notification Block                                                                                                                                                               | ● Win10 LTSB, LTSC Only     |                            |                                   |                                 |                                           |
|                                       | UWF Protection                                                                                                                                                                           | ● Win10 LTSB, LTSC Only     |                            |                                   |                                 |                                           |





## DeviceOn Cloud Version

### Standalone (VM)

The standalone version provides all packages of the DeviceOn software in one installer package, including RabbitMQ as a message broker, MongoDB, PostgreSQL as databases, Grafana for visualization, Tomcat for web services, and a watchdog service that protects DeviceOn core components from crashing or becoming unresponsive. 

This section specifies the minimum hardware requirements for DeviceOn Cloud (Standalone) and the operating systems on which DeviceOn is supported. In general, the better the hardware configuration of your computer, the better your experience with DeviceOn will be. To achieve a more satisfying experience with DeviceOn, particularly in terms of the client software, it is highly recommended that your system be substantially better than the minimum requirements specified in the following sections. This is particularly true if running server software locally on the same system as the client software.

Attention to the following areas can make a significant improvement to your overall user experience and enjoyment of the software:

**Hardware Minimum Requirements:**
* Intel® Core™ i5 2.3 GHz CPU and at least 8GB of RAM
* 25 GB root partition for the system
* 100 GB data storage partition (for documents and indexing)

**General Operation Systems and Recommendations:**

* **Windows Server 2016 64-bits**
* **Windows Server 2019 64-bits**
* **Windows Server 2022 64-bits**
* **Ubuntu 18.04/20.04 64-bits**

>[Download Installer <i class="fa solid fa-download"></i>](https://eiot.blob.core.windows.net/deviceon/DeviceOn_Server.zip)


***Reserve Port for DeviceOn Server Used***
|   | Name & Description                           | Inbound Port                                                  |
|---|----------------------------------------------|---------------------------------------------------------------|
| 1 | DeviceOn HTTP, HTTPs Web Services            | 80, 443 [Depends on Installation]                             |
| 2 | DeviceOn Dashboard (Grafana)                 | 3000 [Depends on Installation]                                |
| 3 | Message Broker (RabbitMQ) MQTT, MQTTs        | 1883, 8883                                                    |
| 4 | Message Broker (RabbitMQ) AMQP, AMQPs        | 5671, 5672                                                    |
| 5 | Message Broker (RabbitMQ) Management Console | 15672                                                         |
| 6 | Repeater for Remote Desktop                  | 5501 (~v-4.6)<br>8022 (v-4.7) Encrypted Tunnel                |
| 7 | Websockify for Remote Desktop                | 6083 \~ 6183 (v-4.2)<br>6083 \~ 6102 (v-4.3)<br>6083 (v-4.6)  |
| 8 | Database for MongoDB                         | 27017                                                         |
| 9 | Database for PostgreSQL                      | 5432                                                          |
| 10| FTP Service                                  | 2121 [Depends on Installation] (v-4.3)                        |

### DeviceOn for Azure (Enterprise) - Kubernetes
The Azure Kubernetes Service (AKS) makes it easy to deploy a managed Kubernetes cluster to Azure. AKS reduces the complexity and operational overhead of managing Kubernetes by offloading much of that responsibility to Azure. Azure handles critical tasks like health monitoring and maintenance for those Kubernetes services.

Deploying DeviceOn on the Azure Kubernetes Service is easy and with just a few steps, containers or nodes can be scaled up to manage 10 thousands of devices. Moreover, DeviceOn can leverage the Azure IoTHub and Cosmos DB for Azure native security and performance. Since the data is already stored on the Azure cloud, it is much easier to leverage the Azure ecosystem – for example using the provided data for Azure Machine Learning.

>[Deploy to Azure <i class="fa duotone fa-play"></i>](https://portal.azure.com/#create/Microsoft.Template/uri/https%3a%2f%2fmarketplacetemplate.blob.core.windows.net%2fdeviceon%2fDeviceOn.json)

![](https://i.imgur.com/DHB0qrY.png)

## DeviceOn Agent Version

### WISE-Agent Architecture

Advantech provides a device client that is used to communicate and exchange information between IoT (Internet of Things) devices and the DeviceOn cloud services, called **WISE-Agent**. WISE-Agent provides a rich set of user-friendly features that are intelligent, standardized and scalable.

-   Standardization

>   The communication protocol between client and cloud is based on the industry standard MQTT protocol. The IoT sensor data format is following the IPSO Alliance definition, implemented in JSON.

-   Portability

>   The whole framework is written in C language and follows the ANSI C Standard. C compilers are widely available for most platforms and allow easy porting to different architectures or operating systems.

-   Scalability

>The WISE-Agent has a modular design and provides a plugin concept that allows flexible addition of new data sources or extra functionality.

WISE-Agent is support on different platforms running Windows 7 (or newer) or Ubuntu 16.04 x64 (or newer). Please contact us for others architectures (e.g. RISC) or operating systems (e.g. Yocto based Linux/Android).

WISE-Agent includes two parts, one is the **Core Framework** and **Plugins**.

-   **Core Framework** is the main library used to communicate with WISE-PaaS IoTHub or standard MQTT broker and include below components

1. Platform Profiler: describes the target platform (e.g., OS version, SN, Device name, MAC address)
2. Configuration: describes how to connect to MQTT broker (e.g., Credential URL, IoTKey, TLS/SSL settings)
3. Core Manager: integrates and manages the resources and keeps them alive.
4. Core Command: responsible for handling commands that interact with internal components (e.g., rename, update, get capability, auto report start/stop)
5. Plugin SDK: A plugin framework that makes plugin implement more easily.
6. Keep Alive: A component to detect the connection between WISE-Agent and DeviceOn Server.
7. Data Synchronization: kernel plugin that caches and restores data to ensure zero downtime.
8. Rule Engine: kernel plugin that supports the threshold rule check and then sends event or trigger actions
9. Plugin Loader: responsible for loading and managing plugins indicated in **module_config.xml**

![](https://i.imgur.com/oHfUSV3.png)



-   **The plugins** include IPC monitoring (Advantech Hardware, HDD/SSD, Networks, Process…etc.), control function (Backup/Recovery, Protection, Remote Desktop, Terminal…), and sensor protocol collection.

| **Agent Plugin** | **Description**                                                                                               |
|-----------------------|---------------------------------------------------------------------------------------------------------------|
| SUSI Control          | Monitoring and Control Advantech Hardware Platform                                                            |
| HDD Monitoring        | Monitoring Hard Drives (HDD, SSD) Usage, Healthy and S.M.A.R.T Information, especially for Advantech SQFlash. |
| Network Monitoring    | Monitoring Network Interface Usage, Throughput…                                                               |
| Process Monitoring    | Monitoring System Process Status, CPU, Memory Usage.                                                          |
| Power Management      | Remote Control Power On, Off, Reboot, Sleep, Hibernate.                                                       |
| Backup/Recovery       | Remote Backup/Recovery System via Acronis                                                                     |
| Protection            | Remote System Protection via McAfee                                                                           |
| Remote Desktop        | Remote Desktop via VNC Viewer                                                                                 |
| Remote Terminal       | Remote Terminal Command                                                                                       |
| Remote Screenshot     | Remote Screenshot on Current Screen                                                                           |
| OTA (Over-the-Air)    | Remote Software, Firmware Update                                                                              |
| System Program        | Monitoring System Program Information                                                                         |
| Embedded Control      | Advanced Control (UWF, USB Lock, Keyboard Filter, …etc.) for Windows 10 Embedded, LTSC, LTSB                  |
| HDD Prediction        | Build-in Hard Drives (HDD, SSD) Failure Prediction Model                                                      |
| Modbus                | Modbus Device Data Gathering                                                                                  |
| Service Plugin        | Bridge Southbound Device Service                                                                              |
| Local Provision Plugin| Similar to UPnP mechanism, provides device fast onboarding on local network.                                   |

### WISE-Agent Supported Operating Systems
* **Windows 7 SP1/8/10 32-bit/64-bit**
* **Ubuntu 16.04, 18.04, 20.04, 22.04 x64**
* **CentOS 7.6, 8.2 x64** 
* **Other Linux flavours (e.g., Yocto) on x86 or RISC (on a per project basis)** 
* **Android on RISC (on a per project basis)**

> [Download Installer for Server 5.x <i class="fa solid fa-download"></i>](https://eiot.blob.core.windows.net/deviceon/WISE-Agent%20for%20v5.0.zip)
> [Download Installer for Server 4.x <i class="fa solid fa-download"></i>](https://eiot.blob.core.windows.net/deviceon/WISE-Agent.zip)

***Assigned Ports for Device Communication***
|   | Name & Description         | Outbound Port                             |
|---|----------------------------|-------------------------------------------|
| 1 | MQTT, MQTTs Message Client | 1883, 8883                                |
| 2 | Remote Desktop VNC Client  | 5501<br> 8022 (v-1.4.45 and Server v-4.7) |

**Hardware Minimum Requirements:**
* Intel® Celeron™ 1.10 GHz CPU and at least 2GB of RAM
* 500 MB root partition for the system 
* Advantech HW with respective SUSI driver 3.02/4.0 support is required for the HWM (Hardware Monitoring Management) feature to be available 

## Security

**System Security** is about not only installing and onboarding devices and networks securely but also managing their ongoing operations throughout their lifecycle and identifying and isolating any threats. Industries everywhere are digitizing, which is creating a multitude of new security requirements for the Internet of Things (IoT). End-to-end (E2E) security management will be essential to ensuring security and privacy in the IoT, while simultaneously building strong identities and maintaining trust. As the diversity of IoT services and the number of connected devices continue to increase, the threats to IoT systems are changing and growing even faster.

A comprehensive model of IoT device security, as shown in below structure, the comprehensive IoT module security in an IoT system has three main parts: 

 #### 1. Device Security
> DeviceOn leverage McAfee Embedded Security software to prevents unauthorized changes and will lock a system down to a known application is an industry, that’s an industrial first solution to secure embedded devices. 
For disaster recovery, Acronis provides users a quick and easy-operated solution to protect data and recover the entire system even when OS crash, effectively reduces down-time cost and lowers the risk of data loss.

 #### 2. Secure Transporty
> The server distributed SSL certificates to use TLS (v-1.3) as an encrypted and secure data transmission channel, and device default enable MQTT-SSL for communication.

- #### <font color=blue>Topics Isolation & Unique Device IoT Key</font>
Topics are specially handled in RabbitMQ. Topics are not public. Access control isolates an activated device to publishing/subscribing only to that device’s topics even though multiple devices will have subscriptions to identically named topics. A device is not allowed to subscribe/publish to another device’s topics.

Second, in IoT applications, command topics are used to control a device remotely and to acknowledge successful command executions. Unlike telemetry, command topics are not read-only. Commands are a back and forth workflow that can occur **between the cloud and devices**. Because commands are actionable messages, **isolate the MQTT topic for command messages from telemetry topics.**

- #### <font color=blue>Use x.509 Certificates to Authenticate Edge Device</font>

DeviceOn supports x.509 certificate authentication for use with a secure TLS/SSL connection. The x.509 edge device authentication **allows device to authenticate to servers with certificates rather than with a username and password.**

- #### <font color=blue>Use TPM + x.509 Certificates to Provide Higher Security</font>

The solution that we integrate on DeviceOn for Azure (Enterprise Edition), leverage Azure IoT Edge and TPM 2.0 to offer secure authentication and private key protected.

TPM, also known as [ISO/IEC 11889](https://www.iso.org/standard/66510.html), is a standard for securely generating and storing cryptographic keys. TPM also refers to a virtual or physical I/O device that interacts with modules that implement the standard. A TPM device can exist as discrete hardware, integrated hardware, a firmware-based module, or a software-based module.

 #### 3. Secure Cloud Service
The cloud service components include Tomcat as a web server that provide an HTTPS protocol and backend APIs services, each connection between backend and database adopt SSL encryption, and enforce password policies. Second, for advanced attack, such as SQL injection, XXC, local and remote file vulnerabilities, the Nginx+Naxsi to achieve Web Application firewall (WAF) protection. All DeviceOn services pass through famous vulnerability tools to ensure security for your it IoT solutions, and the binary uses ProGuard code obfuscation protection. The APIs authentication not only uses JWT (JSON Web Tokens) to hide/encrypt sensitive data, but, integrate **LDAPs** & **Azure AD Domain Service** for secure.

![](https://i.imgur.com/sSOoBQI.png)


### Role-based Access Control (RBAC)
DeviceOn supports three different user roles - “**Root**”, “**System Admin**” and “**Device Admin**”. There is only one single “Root” account per system, which has the highest permission level and can create “System Admin” or “Device Admin” accounts. The intermediate user level “System Admin” can be used to create “Device Admin” accounts. “Device Admin” accounts have the lowest permission level.

### SSL Encryption

-   *HTTPS on DeviceOn Web Server*

>   The principal motivations for HTTPS are authentication of the accessed website, protection of the privacy and integrity of the exchanged data while in transit. It protects against man-in-the-middle attacks. The bidirectional encryption of communications between a client and server protects against eavesdropping and tampering of the communication.

-   *SSL Connection on Database (PostgreSQL, MongoDB)*

>   PostgreSQL and MongoDB have native support for using SSL connections to encrypt client/server communications for increased security.

-   *Create Security Credentials on Database*

>   Databases are by default protected by secure credentials and require explicit authentication for connections. This avoids accidentally deploying platforms with unprotected access.

-   *Device Connectivity via MQTT SSL*

>   RabbitMQ supports multiple protocols including MQTT, which the most popular IoT (Internet of Things) protocol. By default, SSL is used to encrypt all MQTT traffic for device connectivity.

-   *Enforce Password Policies*

>   While DeviceOn allows you to set some of your own passwords, please make sure those meet the minimum complexity requirements established by your specific organization.

### Vulnerability Scanning Tools

he DeviceOn server pass through below famous vulnerability tools to ensure security for your AIoT solutions. Furthermore, all the testing including anti-malware (**Trend Micro** and **Kaspersky**)

-   *Web Application Assessment Report (Micro Focus)*

>   [WebInspect](https://www.microfocus.com/zh-cn/products/webinspect-dynamic-analysis-dast/how-it-works)  is an automated dynamic testing tool that mimics real-world hacking techniques and attacks, and provides comprehensive dynamic analysis of complex web applications and services.

-   *OpenVAS (Open Vulnerability Assessment System)*

>   [OpenVAS](http://www.openvas.org/) is a full-featured vulnerability scanner. Its capabilities include unauthenticated testing, authenticated testing, various high level and low-level Internet and industrial protocols, performance tuning for large-scale scans and a powerful internal programming language to implement any type of vulnerability test.

>   The scanner is accompanied by a vulnerability tests feed with a long history and daily updates. This [Greenbone Community Feed](https://community.greenbone.net/t/about-greenbone-community-feed-gcf/) includes more than 50,000 vulnerability tests.

-   *Nessus*

>   [Nessus](https://www.tenable.com/products/nessus) is the de-facto industry standard vulnerability assessment solution for security practitioners. The latest intelligence, rapid updates, an easy-to-use interface. 

1. Covers an industry-leading 47,000+ vulnerabilities
2. Unlimited scans at no extra cost
3. Compliant with PCI, HIPPA, GLBA, CIS, NIST, and more

-   *OWASP ZAP*

>   The [OWASP Zed Attack Proxy (ZAP)](https://owasp.org/www-project-zap/) is one of the world’s most popular free security tools and is actively maintained by hundreds of international volunteers\*. It can help you automatically find security vulnerabilities in your web applications while you are developing and testing your applications. It’s also a great tool for experienced pentesters to use for manual security testing.

-   *Skipfish*

>   [Skipfish](https://tools.kali.org/web-applications/skipfish) is an active web application security reconnaissance tool. It prepares an interactive sitemap for the targeted site by carrying out a recursive crawl and dictionary-based probes. The resulting map is then annotated with the output from a number of active (but hopefully non-disruptive) security checks. The final report generated by the tool is meant to serve as a foundation for professional web application security assessments.

> Key features:

1. High speed: pure C code, highly optimized HTTP handling, minimal CPU footprint – easily achieving 2000 requests per second with responsive targets.
2. Ease of use: heuristics to support a variety of quirky web frameworks and mixed-technology sites, with automatic learning capabilities, on-the-fly wordlist creation, and form autocompletion.
3. Cutting-edge security logic: high quality, low false positive, differential     security checks, capable of spotting a range of subtle flaws, including blind injection vectors.

-   *Nikto*

>   [Nikto](https://tools.kali.org/information-gathering/nikto) is an Open Source (GPL) web server scanner which performs comprehensive tests against web servers for multiple items, including over 6700 potentially dangerous files/programs, checks for outdated versions of over 1250 servers, and version specific problems on over 270 servers. It also checks for server configuration items such as the presence of multiple index files, HTTP server options, and will attempt to identify installed web servers and software. Scan items and plugins are frequently updated and can be automatically updated.

-   *W3af*

>   [w3af](http://w3af.org/) is a **Web Application Attack and Audit Framework**. The project’s goal is to create a framework to help you secure your web applications by finding and exploiting all web application vulnerabilities.

-   *Arachni*

>   [Arachni](https://www.arachni-scanner.com/) is a fully featured web security scanning tool, it is based on ruby framework.It is an open source, modular and high performance tool. It comes with both command line interface as well as web based gui interface, it is highly versatile tool for security scanning purpose. It supports almost all of the popular web application such as HTML5, Java Script and AJAX etc, Additionally it is enables with multi user-multi platform collaboration.It allows you to generate reports in desired format (.txt, XML, HTML). 

### Third-Party Vulnerability Fixed and Updates

-   OpenJRE (v-1.8.362)
<table><tr><td bgcolor=	#DFFFDF><font color=black>CVE-2021-35603, CVE-2021-35588, CVE-202135586, CVE-2021-35578, CVE-2021-35567, CVE-2021-35565, CVE-2021-35564, CVE-2021-35561, CVE-202135556, CVE-2021-2388, CVE-2021-2369, CVE-2021-2341</font></td></tr></table>

-   Tomcat (v-9.0.73)
<table><tr><td bgcolor=	#DFFFDF><font color=black>CVE-2022-34305</font></td></tr></table>
	    
-   RabbitMQ (v-3.11.6), Erlang 25 
<table><tr><td bgcolor=	#DFFFDF><font color=black>CVE-2022-37026</font></td></tr></table>

-   PostgreSQL (v-14.2)
<table><tr><td bgcolor=	#DFFFDF><font color=black>CVE-2021-23214, CVE-2021-23222</font></td></tr></table>

-   MongoDB (v-4.4.14)

-   Grafana (v-9.3.13)
