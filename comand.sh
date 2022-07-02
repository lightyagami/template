echo "deb [arch=$( dpkg --print-architecture )] https://repo.jellyfin.org/ubuntu focal main" | sudo tee /etc/apt/sources.list.d/jellyfin.list
wget -O - https://repo.jellyfin.org/jellyfin_team.gpg.key | sudo apt-key add -
sudo apt install apt-transport-https ca-certificates

sudo apt update
sudo apt install jellyfin

systemctl status jellyfin
sudo systemctl start jellyfin
sudo systemctl enable jellyfin
