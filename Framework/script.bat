@echo off
setlocal

:: Nom du fichier source


:: Nom du JAR à générer
set JAR_NAME=framework.jar

echo Compilation du fichier Java...
javac -cp "jakarta.servlet-api.jar" -d . *.java

echo Creation du JAR : %JAR_NAME%
jar cf %JAR_NAME% servlet

echo JAR genere : %JAR_NAME%
endlocal
pause