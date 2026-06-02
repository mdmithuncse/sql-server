# MS SQL Server 2025 Dockerize implementation

It's a docker implementation of MS SQL Server 2025 which will pull the image and run the docker instance from docker compose file. The docker compose file has the necessary configuration which is ready to implement for any other project also.

## 🚀 How to run

### Start SQL Server 2025

```bash
docker compose up -d
```

### Check status

```bash
docker ps
```

### Check health

```bash
docker inspect --format='{{.State.Health.Status}}' mssql2025
```

## Verify folders inside SQL Server container

```bash
docker exec -it mssql2025 bash
```

#### Then:

```bash
ls -l /var/opt/mssql/data
ls -l /var/opt/mssql/logs
ls -l /var/opt/mssql/secrets
ls -l /var/opt/mssql/backups
```

## 📥 Copy a backup file into the backup volume

```bash
docker cp C:\path\to\file.bak mssql2025:/var/opt/mssql/backups/
```

## 📤 Dump a backup from SQL Server into the backup volume

#### Inside SQL Server:

```SQL
BACKUP DATABASE Test
TO DISK = '/var/opt/mssql/backups/Test.bak'
WITH FORMAT;
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

## License

[GPL-3.0](https://choosealicense.com/licenses/gpl-3.0/)
