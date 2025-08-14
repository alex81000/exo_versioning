@echo off
chcp 65001 >nul
echo Créer fichier doc.txt
@echo off
echo Création du fichier doc.txt...
echo Ce fichier contient des informations importantes. > doc.txt
echo Fichier doc.txt créé avec succès.
pause
echo Création d'index.html

echo <!DOCTYPE html> <html lang="en"> <head> <meta charset="UTF-8"> <meta name="viewport" content="width=device-width, initial-scale=1.0"> <link rel="stylesheet" href="style.css"> <title>Special BAT</title> </head> <body> <h1>Bonjour !</h1> <p>Bienvenue sur notre site web.</p> </body> </html> >> index.html
echo Fichier index.html créé avec succès.
pause
echo Créer fichier newStyle.css
echo *{ margin: 0; padding: 0; box-sizing: border-box; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; scroll-behavior: smooth; }h1{ font-size: 2.5rem; color: #2a8b3f; margin-bottom: 20px; } >> newStyle.css
echo Nouveau style CSS créé avec succès.
pause