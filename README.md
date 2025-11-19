# 🚀 Proyecto Final – Business Intelligence aplicado a Uber

**Autor:** Lucas Andrés Paleo  
**Carrera:** Licenciatura en Ciencias de Datos  
**Año:** 2025 – Buenos Aires, Argentina  

[![Python Version](https://img.shields.io/badge/python-3.8%2B-blue)](https://www.python.org/downloads/)
[![MySQL](https://img.shields.io/badge/MySQL-8.0%2B-blue)](https://dev.mysql.com/downloads/)
[![PowerBI](https://img.shields.io/badge/PowerBI-Desktop-yellow)](https://powerbi.microsoft.com/desktop/)

---

## 📄 Descripción del proyecto

Este proyecto implementa un flujo completo de **análisis y visualización de datos** sobre viajes de Uber, utilizando **Python** para el procesamiento de datos y **Power BI** para la creación del tablero final. El proyecto se puede ejecutar tanto en **Google Colab** como localmente.

El objetivo es transformar los datos crudos en un archivo **CSV limpio y listo para analizar**, que luego se conecta directamente a Power BI para visualizar los **indicadores clave (KPIs)**. También incluye un componente de base de datos MySQL para almacenamiento estructurado de los datos.

### 🎯 Características principales

- Análisis completo de datos de viajes de Uber
- Procesamiento ETL automatizado
- Almacenamiento en MySQL
- Visualización en Power BI
- Validaciones de calidad de datos
- Documentación detallada

### 📊 Indicadores principales

- 📈 Total de viajes
- ✅ Viajes completados
- ❌ Viajes incompletos / Viajes no completados
- 💵 Ganancia total 
- 💸 Ganancia perdida por viajes no completados
- � Valor promedio por viaje 
- 📉 Tasa de cancelación 
- 🌟 Calificación promedio de conductores 

---

## ⚙️ Pre-requisitos

### Software necesario

- Python 3.8 o superior
- MySQL 8.0 o superior
- Power BI Desktop (última versión)
- Git (opcional, para clonar el repositorio)
- Cuenta de Google (opcional, si se usa Colab)

### Requisitos de sistema

- RAM: 8GB mínimo (16GB recomendado)
- Espacio en disco: 2GB mínimo
- Sistema operativo: Windows 10/11, macOS, o Linux
- Conexión a internet

## 🛠️ Guía de instalación paso a paso

### 1. Preparación del entorno

#### Opción A: Usando Google Colab (más fácil)
1. Solo necesitas una cuenta de Google
2. Abre el notebook directamente en Colab (ver sección "Ejecución")

#### Opción B: Instalación local (recomendado para desarrollo)

1. **Instalar Python**
   ```powershell
   # Verificar que Python está instalado
   python --version  # Debe mostrar 3.8 o superior
   ```

2. **Instalar MySQL**
   - Descargar MySQL Community Server desde [mysql.com](https://dev.mysql.com/downloads/)
   - Durante la instalación, anotar el usuario root y contraseña

3. **Clonar el repositorio**
   ```powershell
   git clone https://github.com/LucasP01/TFG.git
   cd TFG
   ```

4. **Crear y activar entorno virtual**
   ```powershell
   # Windows (PowerShell)
   python -m venv .venv
   .\.venv\Scripts\Activate.ps1

   # Linux/macOS
   python3 -m venv .venv
   source .venv/bin/activate
   ```

5. **Instalar dependencias**
   ```powershell
   python -m pip install --upgrade pip
   pip install -r requirements.txt
   ```

### 2. Configuración de la base de datos

1. **Iniciar MySQL y crear la base de datos**
   ```powershell
   # Conectar a MySQL (reemplazar 'root' con tu usuario)
   mysql -u root -p

   # En el prompt de MySQL:
   source uber_dataset.sql
   ```

2. **Verificar la instalación**
   ```powershell
   # En Python
   python -c "import pandas, numpy, matplotlib, seaborn, plotly, jupyter, sqlalchemy, pymysql; print('Todo instalado correctamente!')"
   ```

## 🚀 Ejecución del proyecto

### 1. Ejecución del notebook

#### Opción A: Google Colab
1. Abrir [Google Colab](https://colab.research.google.com)
2. File → Open notebook → GitHub
3. Pegar URL: `https://github.com/LucasP01/TFG`
4. Seleccionar `TFG_Lucas_Paleo.ipynb`
5. Runtime → Run all

#### Opción B: Local
```powershell
# Activar entorno virtual si no está activo
.\.venv\Scripts\Activate.ps1  # Windows
source .venv/bin/activate     # Linux/macOS

# Iniciar Jupyter
jupyter notebook TFG_Lucas_Paleo.ipynb
```

### 2. Validación de la ejecución

1. **Verificar base de datos**
   ```sql
   USE uber_db;
   SELECT COUNT(*) FROM Uber_Rides;
   ```
   Deberías ver el número total de registros.

2. **Verificar archivo CSV**
   - Buscar `uber_dataset_final.csv` en el directorio
   - Debería tener todas las columnas procesadas

3. **Verificar visualizaciones**
   - Todas las celdas del notebook deben mostrar gráficos
   - No debe haber errores en la ejecución


### Problemas de instalación
- **Error**: `pip install` falla
  - **Solución**: Actualizar pip: `python -m pip install --upgrade pip`

- **Error**: Módulo no encontrado
  - **Solución**: Verificar entorno virtual activo y reinstalar requirements

### Problemas de base de datos
- **Error**: No se puede conectar a MySQL
  - **Solución**: Verificar servicio MySQL activo y credenciales correctas

- **Error**: Tabla no existe
  - **Solución**: Ejecutar `uber_dataset.sql` nuevamente

### Problemas de notebook
- **Error**: Kernel muere
  - **Solución**: Aumentar memoria disponible para Jupyter

## 📞 Soporte y contacto

Si encuentras problemas:
1. Revisa la sección de Troubleshooting
2. Abre un issue en GitHub
3. Contacta: [tucorreo@email.com]

## 🤝 Contribuir

1. Fork el repo
2. Crea rama (`git checkout -b feature/mejora`)
3. Commit cambios (`git commit -am 'Add: mejora'`)
4. Push a la rama (`git push origin feature/mejora`)
5. Crea Pull Request

---

## 📁 Estructura del proyecto

```
TFG/
├── 📓 TFG_Lucas_Paleo.ipynb     # Notebook principal (ETL y análisis)
├── 📊 Dashboard_Uber.pbix       # Dashboard Power BI
├── 📄 requirements.txt          # Dependencias Python
├── 🗃️ uber_dataset.sql         # Script de creación BD
├── 📋 ncr_ride_bookings.csv    # Dataset inicial
├── 📈 uber_dataset_final.csv   # Dataset procesado
└── 📝 README.md                # Documentación

```

### Descripción de archivos

- **TFG_Lucas_Paleo.ipynb**: Notebook principal con todo el análisis
  - Carga y limpieza de datos
  - Análisis exploratorio
  - Generación de visualizaciones
  - Exportación a CSV

- **uber_dataset.sql**: Script SQL para
  - Crear base de datos
  - Definir estructura de tablas
  - Configurar relaciones

- **requirements.txt**: Dependencias Python
  - Bibliotecas de análisis (pandas, numpy)
  - Visualización (matplotlib, seaborn)
  - Base de datos (SQLAlchemy)
  - Testing (pytest)

---

## 🪄 Pasos para ejecutar el proyecto

### 1️⃣ Ejecutar el script en Google Colab
1. Abrir el archivo `TFG_Lucas_Paleo.ipynb` en [Google Colab](https://colab.research.google.com/).
2. Ejecutar todas las celdas en orden (Ctrl + F9 o “Runtime → Run all”).  
3. El script:
   - Descarga el dataset público de Uber desde GitHub/Kaggle.  
   - Realiza el proceso ETL (limpieza, normalización y validaciones).  
   - Genera automáticamente el archivo `uber_dataset_final.csv` listo para análisis.

El archivo quedará disponible para descargar desde Colab o directamente en tu carpeta de ejecución.

---

### 2️⃣ Conectar Power BI al CSV
1. Abrir **Power BI Desktop**.  
2. En “**Obtener datos → Archivo → CSV**”, seleccionar `uber_dataset_final.csv`.  
3. Verificar que las columnas se carguen correctamente.  
4. Abrir o importar el archivo `Dashboard_Uber.pbix` (opcional, si querés ver el tablero ya diseñado).  

---

### 3️⃣ Visualizar el tablero
Una vez conectado el CSV, se podrá visualizar el dashboard con los siguientes indicadores principales:

- ✅ Tasa de cancelación de viajes.  
- 🚗 Porcentaje de viajes completados.  
- ⏱️ Tiempo promedio de viaje.  
- 💵 Ingreso promedio por viaje.  
- 🌟 Calificación promedio (clientes y conductores).  

---

## 🧠 Resultado final

El flujo permite replicar el proyecto completo **de punta a punta**:  
desde la extracción y limpieza de los datos hasta la visualización de KPIs en Power BI, **sin necesidad de instalar bases de datos ni ejecutar código SQL**.  

---

## ⚠️ Notas importantes según el entorno

> **Google Colab:**
> - Comentá las celdas relacionadas con la carga y exportación de datos en MySQL (conexión, creación de tablas, inserts, etc.).
> - Dejá activa la exportación del CSV (`uber_dataset_final.csv`).
> - Ejemplo:
>   ```python
>   # Conexión y carga en MySQL (comentar en Colab)
>   # import sqlalchemy
>   # engine = sqlalchemy.create_engine(...)
>   # df.to_sql(...)
>   
>   # Exportar CSV (dejar activo)
>   df.to_csv('uber_dataset_final.csv', index=False)
>   ```
>
> **Ejecución local (Visual Studio, Jupyter, etc.):**
> - Comentá la exportación del CSV si solo vas a usar la base de datos.
> - Dejá activas las celdas de conexión y carga en MySQL.
> - Ejemplo:
>   ```python
>   # Conexión y carga en MySQL (dejar activo)
>   import sqlalchemy
>   engine = sqlalchemy.create_engine(...)
>   df.to_sql(...)
>   
>   # Exportar CSV (comentar si no lo usás)
>   # df.to_csv('uber_dataset_final.csv', index=False)
>   ```
>
> **¿Por qué?**
> - Colab no soporta conexiones directas a MySQL locales.
> - El CSV es el formato universal para cargar en Power BI.
> - Si usás local y tenés MySQL, podés aprovechar la base de datos para análisis avanzados.

---

**Lucas Andrés Paleo**  
Licenciatura en Ciencias de Datos – 2025  
📧 lucas01andres@gmail.com
