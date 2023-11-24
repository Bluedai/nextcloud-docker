# nextcloud-docker
# Installiation
Zusätzlich wird das `init-letsencrypt.sh` Skript aus diesem Repository benötigt:

```bash
git clone https://github.com/wmnnd/nginx-certbot.git
```

```Reminder
.env anpassen
init-letsencrypt.sh anpassen und ausführen um ssl Zertifikate zu erstellen
mysql skript ausführen um sourcen für das Image zu laden
mysql dumpfile anpassen ( Passwort )
anpassen nextcloud/html/config/config.php
nginx nginx-certbot/data/nginx/app.conf anpassen

```

# Update
- mysql nutz kein online Image und muss selbst gebaut werden.
    - mysql/Files/originalbuild/clone.sh ausführen
    - cp mysql/Files/originalbuild/Dockerfile.new mysql/Files/Dockerfile
    - docker-compose build mysql
- Mit `docker-compose pull` läd man alle neuen Images runter. Dies kann im Hintergrund ohne Einschränkung bei laufenden Containern erfolgen. 
- Mit `docker-compose up -d` prüft docker-compose, welcher Container neu erstellt werden muss. Er beendet diesen automatisch, generiert einen neuen und startet den neuen Container.Container ohne Update laufen ungestört weiter, Container mit Updates sind kurzzeitig offline
docker-compose pull
docker-compose up -d
