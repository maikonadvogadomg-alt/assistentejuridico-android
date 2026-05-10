# Como gerar o APK com EAS (Expo Application Services)

## Pré-requisito — EXPO_TOKEN já configurado ✅

O seu token EAS já está salvo como segredo no Replit (`EXPO_TOKEN`).
Isso significa que **não precisa fazer login manual** — o EAS vai autenticar automaticamente.

---

## Passo 1 — Confirmar a URL do app publicado

Abra o arquivo `App.tsx` e confirme que a linha está com a URL certa:

```
const APP_URL = 'https://assistente-juridico-maikoncaldeira.replit.app';
```

Se a sua URL for diferente, troque pelo endereço real (aparece após publicar no Replit).

---

## Passo 2 — Abrir terminal na pasta expo-app

No seu computador (ou no terminal do Replit), entre na pasta:

```bash
cd expo-app
```

---

## Passo 3 — Instalar dependências

```bash
npm install
```

---

## Passo 4 — Configurar variável de autenticação EAS

```bash
export EXPO_TOKEN=qWFqI_0kvjs2HY4o6VuQcuocroq49W418ofTrh5s
```

> No Windows (PowerShell):
> ```powershell
> $env:EXPO_TOKEN="qWFqI_0kvjs2HY4o6VuQcuocroq49W418ofTrh5s"
> ```

---

## Passo 5 — Gerar o APK

Para APK direto (sem Google Play, instala pelo link):

```bash
npx eas build --platform android --profile preview --non-interactive
```

- Faz upload do código para os servidores da Expo
- Leva cerca de 5 a 10 minutos
- No final aparece um **link para baixar o APK**

---

## Passo 6 — Instalar no celular Android

1. Abra o link do APK no celular
2. Vá em **Configurações → Segurança → Fontes desconhecidas → Ativar**
3. Toque no APK baixado e instale

---

## Como funciona o app

O app abre o seu site Replit dentro do celular como um app nativo.
- Precisa de internet (como WhatsApp Web, Gmail, etc.)
- Todas as chaves de IA e dados ficam salvos no servidor Replit
- Não precisa configurar nada de novo no celular
- Microfone, câmera e upload de arquivos funcionam normalmente

---

## Dica — Atualizar o app sem gerar novo APK

Como o app é um WebView, qualquer alteração feita no site Replit aparece automaticamente no app. Só precisa gerar um novo APK se mudar o nome, ícone ou permissões.
