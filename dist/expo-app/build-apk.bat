@echo off
title Gerar APK - Assistente Juridico
echo.
echo ============================================
echo   GERANDO APK - Assistente Juridico
echo ============================================
echo.

:: Verifica Node.js
node --version >nul 2>&1
if errorlevel 1 (
    echo ERRO: Node.js nao instalado!
    echo Baixe em: https://nodejs.org
    pause
    exit /b 1
)
echo [OK] Node.js encontrado

:: Configura o token EAS
set EXPO_TOKEN=qWFqI_0kvjs2HY4o6VuQcuocroq49W418ofTrh5s
echo [OK] Token EAS configurado

:: Instala dependencias
echo.
echo Instalando dependencias (pode demorar 2-3 min na primeira vez)...
call npm install --legacy-peer-deps
if errorlevel 1 (
    echo ERRO na instalacao das dependencias!
    pause
    exit /b 1
)
echo [OK] Dependencias instaladas

:: Gera o APK
echo.
echo Iniciando build do APK na nuvem Expo...
echo (Isso leva de 5 a 10 minutos)
echo.
call npx eas build --platform android --profile preview --non-interactive
echo.
echo ============================================
echo Pronto! Copie o link acima e baixe o APK.
echo Instale no celular e aproveite!
echo ============================================
echo.
pause
