# ISE Health Monitoring Dashboards

ISE is a widely used distributed system for network access control, as ISE is a distributed system there are many limits to the system which should be monitored in a proactive way. To solve this we're going to leverage off the shelf tools such as TIG stack to collect, store and visualise the data from the ISE API to monitor these metrics.

Please note, the actual performance and scale limits will vary depend on your deployment type and version, please refer to [this](https://community.cisco.com/t5/security-documents/ise-performance-amp-scale/ta-p/3642148#toc-hId-1185499862) document to refer to the actual scale numbers for your scenario.

The objective of this project is to provide some example dashboards and telegraf collectors to allow ISE admins to customise and deploy for their own environment.

## Background - the ISE API

There are two types of API in ISE, the ERS (External RESTful Services) and the MNT (monitoring) for this project we'll be using a combination of the two. 

Please note ERS API access is turned off by default, to enable it have a read at this guide [here](https://community.cisco.com/t5/security-documents/ise-ers-api-examples/ta-p/3622623) 

Once the ERS API is enabled the documentation can then be accessed from https://{{Address of ISE PAN node}}:9060/ers/sdk

There is no documentation for the MNT API on the ISE instance itself but the reference guide can be found [here](https://www.cisco.com/c/en/us/td/docs/security/ise/2-0/api_ref_guide/api_ref_book/ise_api_ref_ch1.html)

## Development status

To track development of the individual scripts required, please refer to this table. If you'd like to add in your own scripts of functionality please make a pull request on this repo.

| dataType | Description         | API endpoint                       | Complete | Limit (2.6)                                                  |
|----------|---------------------|------------------------------------|----------|--------------------------------------------------------------|
| Sessions | Number of sessions  | /admin/API/mnt/Session/ActiveCount | 🔴        | 2,000,000 - 3695 as PAN and MnT 500,000 -3595 as PAN and MnT |
| PSN      | Number of PSN nodes | /ers/config/sessionservicenode     | 🔴        | 50                                                           |
| NADS     | Number of network access devices |/ers/config/networkdevice | 🔴         | 100,000                                               |
| NDG      | Number of network device groups |/ers/config/networkdevicegroup | 🔴         | 10,0000                                             |
| Endpoints | Number of endpoints | /ers/config/endpoint              |🔴          | 2,000,000                                                           |
|  Internal users | Number of internal users | /ers/config/internaluser |🔴          | 300,000                                         |
|  Active Directory controllers| Maximum number of AD controllers | /ers/config/activedirectory - TBC |🔴       | 100                                                |
| User certificates  | tbd|                                    |🔴          | 1,000,000                                                          |
| Server certificates | tbd |                                    |🔴          | 1000                                                             |
| Trusted Certificates| tbd |                                    |🔴          | 1000                                                             |
| Number of user portals (Guest, BYOD, MDM, Cert, Posture..)| tbd |/ers/config/portal  |🔴          | 600                                                    |
| Authentication Rules| tbd |                                    |🔴          | N/A (Simple Policy Mode) /1000 (Policy Set Mode)                                                                  |
| Authorization Rules | tbd |                                    |🔴          | N/A (Simple Policy Mode) / 3,000* (Policy Set Mode) with 3200 Authz profiles                                                                |
| Endpoint Identity Groups | tbd | /ers/config/endpointgroup  |🔴          | 1000                                                        |
| User Identity Groups| TBD | /ers/config/identitygroup - TBC |🔴          | 1000                                                             |
| Latency | Latency between hosts |                                    |🔴          | 300ms                                                      |
| Process | Status of core ISE application processes |                                    |🔴          | up/down                                                      |
| Volumes | Free Capacity of core volumn mounts |                                    |🔴          |                                                       |
| CPU | Utilisation of UCS/VM CPU |                                    |🔴          |                                                       |
| RAM | Utiliation of UCS/VM RAM |                                    |🔴          |                                                       |
| HDD | Overall utilisation of UCS/VM storage allocation |                                    |🔴          |                                                       |
