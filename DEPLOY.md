

# 📄 FunctionPlus

# 🚀 Como publicar seu site com GitHub Pages

# 1️⃣ Criar repositório

1. Acesse o GitHub


2. Clique em New repository


3. Nomeie como:



function-plus

4. Marque como Public


5. Clique em Create repository




---

# 2️⃣ Enviar arquivos do site

Via terminal:

cd caminho/para/function-plus-site

git init
git add .
git commit -m "Initial commit"

git branch -M main
git remote add origin https://github.com/seu-usuario/function-plus.git
git push -u origin main


---

# 3️⃣ Ativar GitHub Pages

1. No repositório, vá em Settings


2. Clique em Pages


3. Em Source:

Branch: main

Folder: / (root)



4. Clique em Save


5. Aguarde alguns segundos



Você verá:

Your site is published at https://seu-usuario.github.io/function-plus/


---

# 4️⃣ Acessar o site

https://seu-usuario.github.io/function-plus/

⏱️ Tempo: 1 a 5 minutos


---

# 🌐 Domínio personalizado (opcional)

Opção A — Registro A

Adicione no DNS:

185.199.108.153
185.199.109.153
185.199.110.153
185.199.111.153


---

Opção B — CNAME

Aponte para:

seu-usuario.github.io

Crie um arquivo chamado:

CNAME

Conteúdo:

seudominio.com


---

# 🔄 Atualizar o site

Via Git:

git add .
git commit -m "Atualização"
git push


---

# 🐛 Problemas comuns

Site não aparece

Aguarde alguns minutos

Limpe cache do navegador

Verifique se o branch está como main


Erro 404

Confirme que existe um arquivo:


index.html


---

# 📚 Ajuda

https://docs.github.com/pages

https://stackoverflow.com/questions/tagged/github-pages



---

# 🎉 Pronto

Seu site estará online em:

https://seu-usuario.github.io/function-plus/


