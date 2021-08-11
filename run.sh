sudo docker build -t custom-rabbit .
sudo docker run -d --restart unless-stopped --hostname shopeak-rabbit --name some-rabbit -p 15672:15672 -p 5672:5672 -p 25672:25672 custom-rabbit