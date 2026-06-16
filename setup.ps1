# Установка проекта "Интервью и СМИ"
# Запуск: правой кнопкой на файле -> "Выполнить с помощью PowerShell"

$projectPath = "C:\GSProjects\Интервью и СМИ"
$repoUrl = "https://github.com/insyte77/interviews-media.git"

Write-Host "Клонирование проекта..."

if (Test-Path $projectPath) {
    Write-Host "Папка уже существует, обновляю..."
    Set-Location $projectPath
    git pull
} else {
    New-Item -ItemType Directory -Force -Path "C:\GSProjects" | Out-Null
    git clone $repoUrl $projectPath
}

Write-Host ""
Write-Host "Готово! Проект находится в: $projectPath"
Write-Host ""
pause
