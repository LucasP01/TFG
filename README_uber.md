# 🚀 Proyecto Final – Business Intelligence aplicado a Uber

**Autor:** Lucas Andrés Paleo  
**Carrera:** Licenciatura en Ciencias de Datos  
**Año:** 2025 – Buenos Aires, Argentina  

---

## 📄 Descripción del proyecto

Este proyecto implementa un flujo completo de **análisis y visualización de datos** sobre viajes de Uber, utilizando **Python (Google Colab)** para el procesamiento de datos y **Power BI** para la creación del tablero final.  

El objetivo es transformar los datos crudos en un archivo **CSV limpio y listo para analizar**, que luego se conecta directamente a Power BI para visualizar los **indicadores clave (KPIs)**.

No es necesario ejecutar SQL ni instalar entornos adicionales — todo el procesamiento se realiza desde Google Colab y Power BI.  

---

## ⚙️ Requisitos

- Cuenta de **Google** para abrir Colab.  
- **Power BI Desktop** instalado en tu computadora.  
- Conexión a internet.  

---

## 🧩 Archivos del proyecto

```
ProyectoFinal_UberBI/
│
├── TFG_Lucas_Paleo.ipynb     # Script ETL (Python / Google Colab)
├── uber_dataset_final.csv    # Archivo generado automáticamente
└── Dashboard_Uber.pbix       # Dashboard final en Power BI
```

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

**Lucas Andrés Paleo**  
Licenciatura en Ciencias de Datos – 2025  
📧 lucas.paleo@bingopilar.com.ar  
