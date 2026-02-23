# Reporte — Creación de mi página personal con `postcards` en R

## Objetivo

Crear una página web personal tipo “tarjeta” usando el paquete `postcards` en R, partiendo de una plantilla, personalizando el contenido (YAML + secciones en Markdown) y generando el archivo HTML final para publicarlo en GitHub Pages.

---

## 1. Preparación del entorno

Trabajé dentro de un proyecto en RStudio para mantener organizada la estructura de archivos. Verifiqué que el repositorio estuviera conectado a GitHub y que contara con control de versiones activo.

---

## 2. Instalación y carga del paquete

Para poder usar la plantilla de `postcards`, instalé y cargué el paquete en R:

```r
install.packages("postcards")
library(postcards)
```

Este paquete permite generar páginas web HTML a partir de documentos `.Rmd` con distintos estilos predefinidos.

---

## 3. Creación del documento usando plantilla

Seleccioné la plantilla con el formato:

postcards::trestles

Esto generó un archivo `.Rmd` base que posteriormente personalicé.

---

## 4. Personalización del encabezado YAML

Modifiqué el encabezado YAML para incluir mi nombre, imagen y enlaces:

```yaml
---
title: "Jahzeel Palafox"
image: "jahzeel.jpg"
links:
  - label: GitHub
    url: "https://github.com/JahzeelPalafox"
  - label: Email
    url: "mailto:darapc@lcg.unam.mx"
output:
  postcards::trestles
---
```

### Componentes importantes:

- `title`: Nombre que aparece como encabezado principal.
- `image`: Archivo de imagen que se mostrará en la tarjeta.
- `links`: Botones visibles en la página (GitHub y correo).
- `output`: Define el estilo visual de la plantilla.

---

## 5. Redacción del contenido

Después del YAML, reemplacé el texto de ejemplo con mi información personal, organizada en secciones:

- Presentación breve.
- Sección “Sobre mí”.
- Sección “Formación en desarrollo”.
- Sección “Enfoque personal”.

Utilicé sintaxis Markdown para estructurar títulos y listas.

---

## 6. Inclusión de la imagen

Guardé el archivo `jahzeel.jpg` en el mismo directorio del `.Rmd` para que pudiera ser reconocido por el campo `image:` del YAML.

Verifiqué que el nombre coincidiera exactamente (respetando mayúsculas y minúsculas).

---

## 7. Renderizado del archivo HTML

Para generar la página web final, utilicé el botón “Knit” en RStudio.

Alternativamente, se puede ejecutar:

```r
rmarkdown::render("index.Rmd")
```

Esto produjo un archivo `.html` con el diseño aplicado de la plantilla `trestles`.

---

## 8. Publicación en GitHub Pages

Para que la página estuviera disponible en línea:

1. Hice commit y push de:
   - El archivo `.Rmd`
   - El archivo `.html`
   - La imagen `jahzeel.jpg`

2. Activé GitHub Pages desde:
   Settings → Pages

3. Seleccioné la rama principal (`main`) como fuente de publicación.

Una vez activado, GitHub generó la URL pública del sitio.

---

## 9. Verificación final

Comprobé que:

- La imagen se mostrara correctamente.
- Los enlaces de GitHub y correo funcionaran.
- Las secciones estuvieran bien formateadas.
- La página cargara sin errores.
