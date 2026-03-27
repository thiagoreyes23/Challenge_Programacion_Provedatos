CREATE DATABASE IF NOT EXISTS empleados_db
  CHARACTER SET utf8
  COLLATE utf8_general_ci;

USE empleados_db;

CREATE TABLE IF NOT EXISTS provincia (
  id_provincia INT AUTO_INCREMENT PRIMARY KEY,
  nombre_provincia VARCHAR(100) NOT NULL,
  capital_provincia VARCHAR(100),
  descripcion_provincia TEXT,
  poblacion_provincia VARCHAR(50),
  superficie_provincia VARCHAR(50),
  latitud_provincia VARCHAR(20),
  longitud_provincia VARCHAR(20),
  id_region INT
);

CREATE TABLE IF NOT EXISTS empleado (
  id_empleado INT AUTO_INCREMENT PRIMARY KEY,
  codigo VARCHAR(10) UNIQUE NOT NULL,
  nombres VARCHAR(100) NOT NULL,
  apellidos VARCHAR(100) NOT NULL,
  cedula VARCHAR(10) UNIQUE NOT NULL,
  email VARCHAR(100),
  fecha_nacimiento DATE,
  id_provincia_personal INT,
  observaciones_personales TEXT,
  foto TEXT,
  fecha_ingreso DATE,
  cargo VARCHAR(100),
  departamento VARCHAR(100),
  id_provincia_laboral INT,
  sueldo DECIMAL(10,2),
  jornada_parcial TINYINT(1) DEFAULT 0,
  observaciones_laborales TEXT,
  estado TINYINT(1) DEFAULT 1,
  FOREIGN KEY (id_provincia_personal) REFERENCES provincia(id_provincia),
  FOREIGN KEY (id_provincia_laboral) REFERENCES provincia(id_provincia)
);
```

**`database/provincias.sql`** — pon aquí el INSERT de las 24 provincias que ya tienes.

---

## Estructura final del repositorio

Te recomiendo que en GitHub tengas esto:
```
/
├── empleados-backend/
│   ├── database/
│   │   ├── schema.sql
│   │   └── provincias.sql
│   ├── src/
│   ├── .env.example        ← pon esto en lugar del .env real
│   └── README.md
├── empleados-frontend/
│   ├── src/
│   └── README.md
└── README.md               ← README raíz opcional
