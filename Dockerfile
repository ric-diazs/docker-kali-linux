# Se descarga ultima version de kali
FROM kalilinux/kali-rolling

# Nos movemos a /root y la dejamos como working directory
WORKDIR /root

# Actualizacion de dependencias/paquetes
RUN apt-get update && apt-get -y upgrade && apt-get -y dist-upgrade

# Instalo las herramientas necesarias
RUN apt -y install wget curl net-tools man-db whois nmap vim

# Se eliminan archivos de listas de paquetes APT para reducir tamanio de la imagen
RUN apt-get -y autoremove && apt-get clean && rm -rf /var/lib/apt/lists/*