# Ruta al archivo LICENSE universal
$source = "C:\laragon\www\Global_License\LICENSE"

# Ruta del proyecto actual
$destination = ".\LICENSE"

# Leer contenido del LICENSE universal
$content = Get-Content $source -Raw

# Obtener el año actual
$year = (Get-Date).Year

# Reemplazar el año en la línea de copyright
# Busca cualquier año de 4 dígitos y lo sustituye por el actual
$content = $content -replace "Copyright \(c\) \d{4}", "Copyright (c) $year"

# Guardar el LICENSE actualizado en el proyecto
Set-Content -Path $destination -Value $content -Encoding UTF8

# Añadir a Git
git add LICENSE

# Commit automático
git commit -m "Add universal license ($year)"

# Push automático
git push

