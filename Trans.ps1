# Переключаемся на ветку dev
git checkout dev

# Получаем последние изменения
git pull

# Переключаемся на ветку prd
git checkout prd

# Вливаем изменения из dev
git merge dev

# Устанавливаем тэг на последний коммит
$date = Get-Date -Format "yyyyMMddHHmmss"
$tag = "release-$date"
git tag $tag

# Отправляем изменения и тэг на удаленный репозиторий
git push origin prd
git push origin $tag
