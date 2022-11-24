curl -H 'Content-Type: application/json' debezium:8083/connectors --data '
{
  "name": "marks-connector",  
  "config": {
    "connector.class": "io.debezium.connector.postgresql.PostgresConnector", 
    "plugin.name": "pgoutput",
    "database.hostname": "postgres", 
    "database.port": "5432", 
    "database.user": "admin", 
    "database.password": "root", 
    "database.dbname" : "init_db", 
    "database.server.name": "postgres", 
    "table.include.list": "public.marks" 
  }
}'

