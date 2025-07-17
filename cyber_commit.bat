
@echo off
setlocal enabledelayedexpansion

:: Definindo mensagem temática aleatória
set /a rand=%RANDOM% %% 5
if !rand! == 0 set msg=Injetando código na Matrix 🧬
if !rand! == 1 set msg=Compilando ideias em alta voltagem ⚡
if !rand! == 2 set msg=Dominando o ciberespaço com lógica 🔮
if !rand! == 3 set msg=Executando missão full stack 💻
if !rand! == 4 set msg=Explorando novas realidades digitais 🧠

:: Data atual
for /f %%i in ('powershell -command "Get-Date -Format yyyy-MM-ddTHH:mm:ss"') do set commitDate=%%i

:: Diretório do script
cd /d "%~dp0"
git pull
git commit --allow-empty -m "💻 [AutoCommit] !msg!" --date "%commitDate%"
git push
