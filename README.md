🎮 Campus Games — Database Setup

A simple and clean Dockerized PostgreSQL environment.

🚀 Getting Started

Make sure Docker Desktop is installed on your computer.

Inside the project folder, run:

docker compose up -d


This will automatically start:

PostgreSQL

pgAdmin

All tables created via init.sql

No manual setup required.

🌐 Access pgAdmin

Open:

http://localhost:5050

Login credentials:

Email:    admin@campus.games
Password: CampusPgAdmin2025!

🐘 PostgreSQL Connection

Use these settings if an application needs to connect:

Host:     localhost
Port:     5433
Database: campus_games
User:     campus_admin
Password: CampusAdmin2025!

📴 Stopping the Environment
docker compose down


Data persists thanks to Docker volumes.

📁 Repository Structure
docker-compose.yml   → Docker environment
init/init.sql        → Automatic schema creation
.gitignore           → Clean project structure

🎯 About

This setup allows every team member to run the exact same database environment with a single command.

🇪🇸 Campus Games — Configuración de Base de Datos

Un entorno PostgreSQL con Docker, limpio y fácil de usar.

🚀 Iniciar

Asegúrate de tener Docker Desktop instalado.

Dentro de la carpeta del proyecto:

docker compose up -d


Esto inicia automáticamente:

PostgreSQL

pgAdmin

Todas las tablas creadas vía init.sql

🌐 Acceso a pgAdmin

Abrir:

http://localhost:5050

Credenciales:

Email:    admin@campus.games
Password: CampusPgAdmin2025!

🐘 Conexión PostgreSQL
Host:     localhost
Puerto:   5433
Base:     campus_games
Usuario:  campus_admin
Clave:    CampusAdmin2025!

📴 Apagar el entorno
docker compose down


Los datos se conservan gracias a los volúmenes.

📁 Contenido del Repositorio
docker-compose.yml   → Entorno Docker
init/init.sql        → Creación automática del esquema
.gitignore           → Proyecto limpio

🎯 Objetivo

Permitir que todo el equipo utilice la misma base de datos, funcionando con un solo comando.
