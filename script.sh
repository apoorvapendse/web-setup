#!/bin/bash

echo "Enter the path: "
read path

cd "$path"

mkdir "server"

cd "server"

touch .env
echo "node_modules" > .env
pnpm i express mongoose dotenv

mkdir "models"
mkdir "controllers"
mkdir "router"
touch server.js

cd "../"

pnpm dlx create-vite@latest
cd client
pnpm i 
cd ../
tree -L 2
echo "SETUP DONE SUCCESSFULLY"




