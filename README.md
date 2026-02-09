# Linux User Monitor

## Description
Linux User Monitor is an interactive CLI security tool that helps monitor logged-in users and detect suspicious activity on a Linux system.

It provides real-time session tracking and basic security alerts.

Perfect for beginners learning Linux security and system administration.

## Features
- Show connected users
- Show login time
- Show IP addresses
- Detect root login
- Real-time monitoring mode
- Log suspicious sessions
- Beginner friendly menu

## Commands used internally
- who
- w
- last
- lastlog
- ps
- watch

## Project structure
linux-user-monitor/
├── README.md
├── run.sh
├── screenshots/
├── src/
│ ├── menu.sh
│ └── monitor.sh

## Cloner le repository

git clone https://github.com/Hectronix-Secura/linux-user-monitor.git

## Aller dans le dossier

cd linux-user-monitor

## Rendre le script exécutable

chmod +x run.sh

## Exécuter avec sudo
sudo ./run.sh
