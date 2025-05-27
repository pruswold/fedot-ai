#!/bin/bash

# Папка проекта
cd "$(dirname "$0")"

# Имя коммита (можно менять)
COMMIT_MSG="Автообновление от Федота"

# Добавляем все файлы
echo "[INFO] Добавляю файлы..."
git add .

# Делаем коммит
echo "[INFO] Коммитим изменения..."
git commit -m "$COMMIT_MSG"

# Заливаем на GitHub
echo "[INFO] Пушим в main..."
git push origin main

echo "[OK] Готово! Федот обновлён. Render сам всё подхватит."
