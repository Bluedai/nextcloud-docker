# nextcloud-docker

Zusätzlich wird das init-letsencrypt.sh Skript aus diesem Repository benötigt

git clone https://github.com/wmnnd/nginx-certbot.git

# update
  mit pull läd man alle neuen Images runter. Das kann im Hintergrund ohne Einschränkung bei laufenden Containern gemacht werden
  mit up -d prüft docker-compose dann welcher container neu erstellt werden muss, beendet diesen Automatisch, generiert einen neuen und startet den neuen Container.
  Container ohne Update laufen ungestört weiter, Container mit Updates sind ganz kurz offline
docker-compose pull
docker-compose up -d
