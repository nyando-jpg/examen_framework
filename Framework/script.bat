@echo off
setlocal

:: Création des dossiers nécessaires
if not exist build\classes mkdir build\classes
if not exist dist mkdir dist

:: Compilation des fichiers Java
echo Compilation des fichiers Java...
javac -d build\classes -cp "lib\*" src\framework\*.java annotation\*.java

:: Création du fichier JAR
echo Creation du fichier JAR...
cd build\classes
jar cvf ..\..\dist\Framework.jar .
cd ..\..

:: Nettoyage
echo Nettoyage des fichiers temporaires...
rmdir /s /q build

echo Build termine. Le fichier JAR se trouve dans le dossier 'dist'
endlocal
pause