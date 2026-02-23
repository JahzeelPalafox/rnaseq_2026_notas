
# Exploración individual — Nuevos paquetes en Bioconductor 3.22

Fuente oficial: <https://bioconductor.org/news/bioc_3_22_release/>

------------------------------------------------------------------------

## Paquete 1: anndataR

🔗 Página en Bioconductor: <https://bioconductor.org/packages/anndataR/>

🔗 Repositorio GitHub: <https://github.com/scverse/anndataR>

### ¿Qué hace?

`anndataR` implementa en R la estructura de datos **AnnData**,
ampliamente utilizada en el ecosistema de Python (especialmente en
análisis de single-cell con scanpy). Permite:

-   Leer archivos `.h5ad` y `.zarr`
-   Trabajar en modo "backed" (sin cargar todo en memoria)
-   Convertir entre objetos AnnData, `SingleCellExperiment` y `Seurat`
-   Acceder directamente a componentes como `X`, `obs`, `var`

### Documentación

El paquete incluye múltiples vignettes: - Introducción general - Lectura
y escritura de archivos - Conversión entre objetos - Integración con
Seurat y SingleCellExperiment

La documentación es clara y contiene ejemplos reproducibles.

### Estado de compilación

Build report (BioC 3.22):
<https://bioconductor.org/checkResults/3.22/bioc-LATEST/anndataR/>

El paquete aparece con INSTALL/BUILD/CHECK = OK en Linux. No se muestran
builders activos para Windows en el anuncio actual de BioC 3.22.

### Actividad y soporte

En GitHub se observan issues abiertos y actividad reciente, lo que
sugiere mantenimiento activo.

------------------------------------------------------------------------

### Discusión personal

Este paquete me pareció particularmente relevante porque resuelve un
problema real de interoperabilidad entre R y Python en análisis de
single-cell. En muchos flujos de trabajo modernos es común alternar
entre scanpy (Python) y Bioconductor (R), y la conversión manual de
formatos puede generar pérdida de información o fricción técnica.

Desde una perspectiva práctica, `anndataR` puede facilitar
colaboraciones interdisciplinarias y reproducibilidad, especialmente en
proyectos donde distintos integrantes usan distintos lenguajes.

------------------------------------------------------------------------

## Paquete 2: blase

🔗 Página en Bioconductor: <https://bioconductor.org/packages/blase/>

🔗 Repositorio GitHub: <https://github.com/andrewmccluskey-uog/BLASE>

### ¿Qué hace?

`blase` propone un método para ubicar muestras de **bulk RNA-seq**
dentro de una trayectoria de pseudotiempo derivada de datos de
single-cell. Utiliza:

-   Correlación de Spearman
-   Bootstrapping para estimar confianza
-   Integración conceptual bulk ↔ single-cell

Esto puede ser útil cuando se tienen cohortes bulk grandes pero se desea
interpretarlas dentro de un eje de desarrollo o diferenciación definido
por datos single-cell.

### Documentación

Incluye vignettes y manual de referencia en Bioconductor. También cuenta
con sitio tipo pkgdown: <https://andrewmccluskey-uog.github.io/blase/>

La documentación es clara conceptualmente, aunque el paquete parece
menos extendido que anndataR.

### Estado de compilación

Build report (BioC 3.22):
<https://bioconductor.org/checkResults/3.22/bioc-LATEST/blase/>

Aparece con INSTALL/BUILD/CHECK = OK en Linux.

### Actividad y soporte

En GitHub no se observan muchos issues abiertos, lo que podría deberse
a: - Baja adopción aún - Paquete relativamente reciente - Comunidad
pequeña

------------------------------------------------------------------------

### Discusión personal

`blase` me pareció metodológicamente interesante porque intenta integrar
dos escalas de datos transcriptómicos: bulk y single-cell.
Conceptualmente es atractivo para estudios de desarrollo, diferenciación
o procesos graduales.

Sin embargo, en comparación con `anndataR`, parece tener menor adopción
y menos evidencia de uso comunitario amplio. Aun así, la idea subyacente
es innovadora y podría ser valiosa en proyectos específicos.

------------------------------------------------------------------------

# Conclusión personal

Tras revisar ambos paquetes, considero que:

-   **anndataR** tiene un impacto práctico inmediato y alto potencial de
    adopción, ya que facilita la interoperabilidad entre dos ecosistemas
    fundamentales en bioinformática moderna (Python y R).
-   **blase** aporta una propuesta metodológica interesante para
    integración bulk–single-cell, aunque parece encontrarse en una etapa
    más temprana de adopción.

En términos de aplicabilidad inmediata en proyectos reales, priorizaría
explorar `anndataR`. No obstante, `blase` representa una herramienta
prometedora para estudios que requieran contextualizar datos bulk dentro
de trayectorias de diferenciación definidas por single-cell.

Esta revisión permitió observar no solo la funcionalidad de los
paquetes, sino también su nivel de mantenimiento, documentación y
madurez dentro del ecosistema Bioconductor.
