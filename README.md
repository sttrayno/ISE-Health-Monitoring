# ISE-Health-Monitoring

ISE is a widely used distributed system for network access control, as ISE is a distributed system there are many ways in






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
