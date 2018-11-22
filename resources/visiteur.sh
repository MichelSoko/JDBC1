#!/bin/bash
# Script Shell pour créer dynamiquement une base de données PostgreSQL

echo "Création d'un utilisateur PostgreSQL :"
echo "Nom de l'utilisateur :"
read user
echo "Mot de passe de l'utilisateur :"
read passwd

dbname=visiteur

echo "Création de la BDD PostreSQL 'visiteur' :"
sudo su postgres -c psql << EOF
CREATE USER $user;
ALTER ROLE $user WITH CREATEDB;
ALTER USER $user WITH ENCRYPTED PASSWORD '$passwd';
CREATE DATABASE $dbname;
ALTER DATABASE $dbname OWNER TO $user;
EOF

echo "Création des tables de la BDD :"
psql -h localhost -U $user -d $dbname < visiteur.sql
