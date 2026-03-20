# Script de Deploy Automático - Function Plus

Write-Host "🚀 Iniciando deploy..." -ForegroundColor Cyan
Write-Host "🌐 Made by FunctionPlus and Nexusdevy" -ForegroundColor Cyan

# Solicitar usuário e repositório
$usuario = Read-Host "Digite seu usuario do GitHub"
$repo = Read-Host "Digite o nome do repo (ex: function-plus)"

# Verificar se já é um repositório Git
if (!(Test-Path ".git")) {
    git init
    Write-Host "✅ Repositório Git inicializado" -ForegroundColor Green
} else {
    Write-Host "✅ Repositório já existente" -ForegroundColor Yellow
}

# Adicionar arquivos
git add .

# Commit
git commit -m "Deploy inicial" 2>$null

# Definir branch principal
git branch -M main

# Adicionar remote (se não existir)
$remoteExists = git remote | Select-String "origin"

if (-not $remoteExists) {
    git remote add origin https://github.com/$usuario/$repo.git
    Write-Host "🔗 Remote origin configurado" -ForegroundColor Green
}

Write-Host ""
Write-Host "⚠️ Certifique-se de que o repositório já foi criado no GitHub!" -ForegroundColor Yellow
Read-Host "Pressione ENTER para continuar"

Write-Host ""
Write-Host "📤 Enviando para GitHub..." -ForegroundColor Blue

# Push
try {
    git push -u origin main
    Write-Host ""
    Write-Host "🎉 Deploy concluído com sucesso!" -ForegroundColor Green
    Write-Host "🌐 Acesse: https://$usuario.github.io/$repo/" -ForegroundColor Cyan
}
catch {
    Write-Host "❌ Erro ao fazer push. Verifique suas credenciais." -ForegroundColor Red
}
