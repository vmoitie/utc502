Installation service FindMe

Ajout du droit d'éxecution sur findme.sh
chmod +x findme.sh

Déplacer le fichier findme.sh dans /usr/local/bin
sudo mv findme.sh /usr/local/bin

Déplacer le fichier findme.service dans /etc/systemd/system
sudo mv findme.service /etc/systemd/system

Initialisation du serveur sur la machine
systemctl daemon-reload
systemctl start findme.service

Test
journalctl -u findme.service -f
