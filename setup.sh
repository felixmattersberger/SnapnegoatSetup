#!/bin/bash

# Skript zur Installation von Python, ffmpeg, Whisper und Java 21 auf Ubuntu

set -e  # Bei Fehlern abbrechen

echo "Aktualisiere Paketlisten..."
sudo apt update

echo "Installiere Python3 und Pip3..."
sudo apt install -y python3 python3-pip

echo "Installiere FFmpeg..."
sudo apt install -y ffmpeg

sudo apt install pipx -y
pipx ensurepath

pipx install openai-whisper
pipx ensurepath

echo "Füge PPA für Java 21 hinzu..."
sudo add-apt-repository -y ppa:openjdk-r/ppa
sudo apt update

echo "Installiere OpenJDK 21..."
sudo apt install -y openjdk-21-jdk

# echo "Setze Java 21 als Standard..."
# sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-21-openjdk-amd64/bin/java 1
# sudo update-alternatives --set java /usr/lib/jvm/java-21-openjdk-amd64/bin/java

echo "Installation abgeschlossen."
echo ""
echo "Versionen der installierten Programme:"
echo "Python: $(python3 --version)"
echo "pip: $(pip3 --version)"
echo "ffmpeg: $(ffmpeg -version | head -n 1)"
echo "Java: $(java -version 2>&1 | head -n 1)"