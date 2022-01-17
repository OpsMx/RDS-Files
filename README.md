# RDS-Files
## Follow this document if you prefer to move your ISD Databases to RDS(Postgres & MySQL) from Minio and Redis

- In Order to Integrate MySQL and Postgres to ISD ensure to have the Databases created already on the AWS. 
  - [Click here to Create MySQL RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_GettingStarted.CreatingConnecting.MySQL.html)
  - [Click here to Create Postgres RDS](https://aws.amazon.com/getting-started/hands-on/create-connect-postgresql-db/)


- Now, if the databases are ready. Follow the below steps to create Schema for Spinnaker and OES.
  - Clone the [Repo](https://github.com/OpsMx/RDS-Files.git)
  - Navigate to the "Create-DB-Files" directory and execute the commands available in the SQL Files
    - Front50, Clouddriver & Orca for Spinnaker
    - OES-DB(platformdb,visibilitydb,opsmx,oesdb & auditdb) for OES
#### Note: Auditdb for OES is a database that is available only from and above OES 3.10.x onwards and above.
- Copy the Clouddriver,Front50 & Orca available under "Spinnaker-Service-Files" to "default/profiles" directory in the halyard repository.
- Ensure to Update the RDS Endpoint URL in the files according to your Database END Points generated.
- To update the DB on OES, in the values.yaml update the DB Part
  - Enable DB to "false"
  - Update the Endpoint URL to RDS Endpoint
  - OES Services will communicate to the Databases created above and start pushing details accordingly.


### Update DB Changes to ISD
- Once, all the above the changes are the done.
- Do a "helm upgrade"
- Wait till all the containers are restarted.
- Now, validated if the new changes are updated or not
  - Check the DB configurations for OES Services - manually check in the configmaps of all the services updated(Sapor, Visibility, Platform, Autopilot & Auditdb)
  - In case if spinnaker services are not update - Ensure to restart the halyard which will clone the new changes and update the spinnaker serivces with all the new changes.

#### Note: Ensure to capture a backup if minio & Redis were used before migrating to RDS. As this would wipe out all the history and comeup as a completely new environment.

In case of any issues Reach out to OpsMx...
