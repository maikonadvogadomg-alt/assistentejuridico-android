#!/bin/bash
echo ""
echo "============================================"
echo "  GERANDO APK - Assistente Juridico"
echo "============================================"
echo ""

# Verifica Node.js
if ! command -v node &> /dev/null; then
    echo "ERRO: Node.js nao instalado!"
    echo "Baixe em: https://nodejs.org"
    exit 1
fi
echo "[OK] Node.js encontrado: $(node --version)"

# Configura o token EAS
export EXPO_TOKEN=qWFqI_0kvjs2HY4o6VuQcuocroq49W418ofTrh5s
echo "[OK] Token EAS configurado"

# Instala dependencias
echo ""
echo "Instalando dependencias (pode demorar 2-3 min na primeira vez)..."
npm install --legacy-peer-deps
if [ $? -ne 0 ]; then
    echo "ERRO na instalacao das dependencias!"
    exit 1
fi
echo "[OK] Dependencias instaladas"

# Gera o APK
echo ""
echo "Iniciando build do APK na nuvem Expo..."
echo "(Isso leva de 5 a 10 minutos)"
echo ""
npx eas build --platform android --profile preview --non-interactive

echo ""
echo "============================================"
echo "Pronto! Copie o link acima e baixe o APK."
echo "Instale no celular e aproveite!"
echo "============================================"
