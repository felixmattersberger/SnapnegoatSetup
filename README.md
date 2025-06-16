# SnapnegoatSetup for Linux

1. Clone the following Repo:

https://github.com/felixmattersberger/SnapnegoatSetup

2. Add execute permission to `setup.sh`

```
chmod +x setup.sh
```

3. Execute and install all packages (may take some time...)

```
./setup.sh
```
4. Logout/login or reboot to apply path changes


5. Execute jar-file `SnapNegoat.jar`

```
java -jar SnapNegoat.jar
```

6. Snapnegoat is now running

```
http://localhost:8080 or http://ip-adress:8080
```

Setup was successfully tested with Ubuntu Server 24.04.2 LTS.