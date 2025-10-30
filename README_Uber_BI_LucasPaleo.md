# 🧠 Proyecto Final – Prototipo de Business Intelligence aplicado a Uber

**Autor:** Lucas Andrés Paleo  
**Carrera:** Licenciatura en Ciencias de Datos  
**Año:** 2025 – Buenos Aires, Argentina  

---

## 📄 Resumen del proyecto

Este trabajo final de grado desarrolla un **prototipo de Business Intelligence (BI)** aplicado a la empresa **Uber**, utilizando un enfoque **ETL (Extract, Transform, Load)** con tecnologías accesibles: **Python (Google Colab)**, **MySQL** y **Power BI**.  

El objetivo general es **transformar datos públicos de viajes en información estratégica**, consolidando un flujo reproducible de limpieza, almacenamiento y visualización que apoye la **toma de decisiones data-driven** dentro de la organización.

El proyecto demuestra cómo, a partir de datos abiertos y herramientas libres, es posible construir un sistema de análisis confiable y visualmente potente, que optimiza procesos operativos, comerciales y de atención al cliente.

---

## ⚙️ Flujo general del proyecto

```
Dataset público (Kaggle)
      │
      ▼
Python / Google Colab  →  Limpieza y transformación (ETL)
      │
      ▼
MySQL                     →  Modelado relacional (opcional)
      │
      ▼
CSV procesado             →  Fuente para Power BI
      │
      ▼
Power BI Dashboard         →  KPIs interactivos
```

---

## 🚀 1. Extracción y Transformación (ETL en Google Colab)

**Archivo:** `TFG_Lucas_Paleo.ipynb`

Este script ejecuta todo el proceso de **extracción y limpieza** del dataset público de Uber (proveniente de Kaggle).  

### Pasos:
1. Abrir el notebook en [Google Colab](https://colab.research.google.com/).  
2. Cargar el dataset desde un repositorio público de GitHub o Kaggle:
   ```python
   import pandas as pd
   url = "https://raw.githubusercontent.com/<usuario>/<repo>/main/uber_dataset.csv"
   df = pd.read_csv(url)
   ```
3. Realizar el proceso de **ETL**:
   - Detección y eliminación de duplicados.
   - Tratamiento de valores nulos.
   - Corrección de formatos de fecha y hora.
   - Normalización de variables categóricas.
   - Identificación de outliers y validaciones de consistencia.
4. Exportar el dataset final procesado:
   ```python
   df.to_csv("uber_dataset_final.csv", index=False)
   ```

💡 *Este archivo (`uber_dataset_final.csv`) es el que se conecta directamente a Power BI.*

---

## 🧱 2. Carga en Base de Datos SQL (opcional)

**Archivo:** `uber_dataset.sql`

El modelo relacional está diseñado para ser compatible con **MySQL**. Permite cargar el dataset limpio y mantener integridad de los datos.  

### Estructura principal:
```sql
CREATE DATABASE IF NOT EXISTS uber_db;
USE uber_db;

CREATE TABLE Uber_Rides (
  Date DATETIME NOT NULL,
  Time TIME NOT NULL,
  Booking_ID VARCHAR(20) PRIMARY KEY,
  Booking_Status VARCHAR(30),
  Customer_ID VARCHAR(20),
  Vehicle_Type VARCHAR(20),
  Pickup_Location VARCHAR(100),
  Drop_Location VARCHAR(100),
  Avg_VTAT DOUBLE,
  Avg_CTAT DOUBLE,
  Cancelled_Rides_by_Customer INT,
  Reason_for_cancelling_by_Customer VARCHAR(255),
  Cancelled_Rides_by_Driver INT,
  Driver_Cancellation_Reason VARCHAR(255),
  Incomplete_Rides INT,
  Incomplete_Rides_Reason VARCHAR(255),
  Booking_Value DECIMAL(10, 2),
  Ride_Distance DECIMAL(10, 2),
  Driver_Ratings DECIMAL(3, 1),
  Customer_Rating DECIMAL(3, 1),
  Payment_Method VARCHAR(20)
);
```

> 💡 Este paso es **opcional para la corrección**.  
> Si el revisor no cuenta con entorno SQL, puede omitirlo y continuar desde el CSV procesado.

---

## 📊 3. Visualización en Power BI

**Archivo:** `Dashboard_Uber.pbix`  
**Fuente de datos:** `uber_dataset_final.csv`

### Pasos:
1. Abrir Power BI Desktop.  
2. En “**Obtener datos → Archivo CSV**”, importar `uber_dataset_final.csv`.  
3. Crear o revisar las medidas y campos calculados (KPIs):  
   - Tasa de cancelación  
   - Tiempo promedio de viaje  
   - Porcentaje de viajes completados  
   - Ingreso promedio por viaje  
   - Nivel de satisfacción (calificación promedio)  
4. Diseñar vistas interactivas con segmentaciones por:
   - Zona geográfica  
   - Tipo de vehículo  
   - Estado de reserva  
   - Periodo temporal  

El tablero principal incluye tres secciones:
- **Visión general:** métricas clave de desempeño.  
- **Operaciones:** eficiencia, tiempos, cancelaciones.  
- **Atención al cliente:** satisfacción y reclamos.  

---

## 🧾 4. Estructura del proyecto

```
ProyectoFinal_UberBI/
│
├── README.md
├── TFG_Lucas_Paleo.ipynb         # Pipeline ETL (Python / Colab)
├── uber_dataset.sql              # Modelo SQL relacional
├── uber_dataset_final.csv        # Dataset procesado (entrada para PBI)
└── Dashboard_Uber.pbix           # Dashboard final Power BI
```

---

## 🧠 5. Objetivos del proyecto

- **General:**  
  Desarrollar un prototipo de BI que integre, limpie y visualice datos públicos de Uber para respaldar decisiones basadas en evidencia.

- **Específicos:**  
  - Construir un pipeline de limpieza automatizado en Python.  
  - Modelar y almacenar los datos procesados en SQL.  
  - Crear un dashboard interactivo con KPIs y segmentaciones.  
  - Asegurar consistencia y trazabilidad del flujo de datos.  
  - Documentar el proceso para garantizar su reproducibilidad.

---

## 📦 6. Herramientas utilizadas

| Componente | Herramienta | Rol |
|-------------|--------------|-----|
| Extracción / Limpieza | **Python (Google Colab)** | Procesamiento de datos |
| Almacenamiento | **MySQL** | Modelo relacional de datos |
| Visualización | **Power BI** | Dashboard interactivo |
| Control de versiones | **GitHub** | Publicación de scripts y datasets |

---

## 📅 7. Plan metodológico

- **Metodología analítica:** CRISP-DM (comprensión, preparación, modelado, evaluación, implementación).  
- **Gestión del desarrollo:** enfoque ágil **SCRUM**, en 4 sprints (ETL, SQL, Dashboard, validación).  
- **Validación:** métricas de calidad, consistencia ≥ 95%, KPIs coherentes y dashboards actualizados.

---

## 📚 8. Resultados esperados

- Dataset limpio y reproducible.  
- Base SQL estructurada (opcional).  
- Dashboard Power BI con indicadores operativos y de satisfacción.  
- Reducción del tiempo de generación de reportes (de 2 horas a 10 minutos).  
- Validación de consistencia ≥ 95% de registros válidos.  

---

## 🧩 9. Conclusión

El proyecto demuestra la **viabilidad técnica y académica** de implementar un sistema de Business Intelligence funcional con herramientas gratuitas y datos abiertos.  
La integración de **Python + MySQL + Power BI** permite construir una arquitectura reproducible, escalable y alineada con prácticas reales del mercado.  

Además, evidencia cómo la analítica puede transformar decisiones intuitivas en estrategias basadas en datos, consolidando la visión de una organización **data-driven**.

---

## ✍️ Autor

**Lucas Andrés Paleo**  
Licenciatura en Ciencias de Datos – 2025  
Buenos Aires, Argentina  
📧 lucas.paleo@bingopilar.com.ar  
