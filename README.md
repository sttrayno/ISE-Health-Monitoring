# ISE Health Monitoring Dashboards

ISE is a widely used distributed system for network access control, as ISE is a distributed system there are many limits to the system which should be monitored in a proactive way. To solve this we're going to leverage off the shelf tools such as TIG stack to collect, store and visualise the data from the ISE API to monitor these metrics.

Please note, the actual performance and scale limits will vary depend on your deployment type and version, please refer to [this](https://community.cisco.com/t5/security-documents/ise-performance-amp-scale/ta-p/3642148#toc-hId-1185499862) document to refer to the actual scale numbers for your scenario.

The objective of this project is to provide some example dashboards and telegraf collectors to allow ISE admins to customise and deploy for their own environment.

## Development status

To track development of the individual scripts required, please refer to this table. If you'd like to add in your own scripts of functionality please make a pull request on this repo.

| dataType | Description         | API endpoint                       | Complete | Limit (2.6)                                                  |
|----------|---------------------|------------------------------------|----------|--------------------------------------------------------------|
| Sessions | Number of sessions  | /admin/API/mnt/Session/ActiveCount | 🔴        | 2,000,000 - 3695 as PAN and MnT 500,000 -3595 as PAN and MnT |
| PSN      | Number of PSN nodes |                                    | 🔴        | 50                                                           |
| NADS     | Number of network access devices |                                    | 🔴         |                                                              |
| NDG      | Number of network device groups |                                    | 🔴         |                                                              |
| Endpoints| Number of endpoints |                                    |🔴          |                                                              |
|  Internal users | Number of internal users |                                    |🔴          | 300,000                                          |
|  Active Directory controllers| Maximum number of AD controllers |                                    |🔴          | 100                                                             |
| Endpoints| Number of endpoints |                                    |🔴          |                                                              |
| Endpoints| Number of endpoints |                                    |🔴          |                                                              |
| Endpoints| Number of endpoints |                                    |🔴          |                                                              |
| Endpoints| Number of endpoints |                                    |🔴          |                                                              |
| Endpoints| Number of endpoints |                                    |🔴          |                                                              |
| Number of user portals (Guest, BYOD, MDM, Cert, Posture..)| Number of endpoints |        |🔴          | 600                                                         |
| Authentication rules| tbd |                                    |🔴          |                                                              |
| Authorization Rules | tbd |                                    |🔴          |                                                              |
| Endpoint Identity Groups | tbd |                                    |🔴          | 1000                                                             |
| User Identity Groups| TBD |                                    |🔴          | 1000                                                             |
| Latency | Latency between hosts |                                    |🔴          | 300ms                                                             |
