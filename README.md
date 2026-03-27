# Challenge_Programacion_Provedatos BACKEND

# Empleados Backend — API REST

API REST construida con NestJS y TypeORM para el módulo de gestión de empleados.

## Requisitos previos

| Herramienta | Versión mínima |
|-------------|----------------|
| Node.js     | v20.x          |
| npm         | v10.x          |
| MySQL       | v8.0           |

## Instalación

1. Clona el repositorio e ingresa a la carpeta del backend:
```bash
   cd empleados-backend
```

2. Instala las dependencias:
```bash
   npm install
```

3. Crea el archivo de variables de entorno en la raíz del proyecto:
```bash
   # Crea un archivo llamado .env con este contenido:
   DB_HOST=localhost
   DB_PORT=3306
   DB_USER=root
   DB_PASS=tu_contraseña
   DB_NAME=empleados_db
   PORT=3000
```

4. Crea la base de datos en MySQL ejecutando el script que está en la carpeta `/database/`:
```bash
   # Desde MySQL Workbench, DBeaver o consola ejecuta:
   database/schema.sql
   database/provincias.sql
```

5. Crea la carpeta para las fotos:
```bash
   mkdir uploads
```

6. Inicia el servidor:
```bash
   npm run start:dev
```

El servidor corre en: `http://localhost:3000`  
Documentación Swagger: `http://localhost:3000/api`

## Dependencias principales

| Paquete | Versión | Para qué se usa |
|---------|---------|-----------------|
| @nestjs/core | ^11.0.0 | Framework principal |
| @nestjs/typeorm | ^11.0.0 | ORM para base de datos |
| typeorm | ^0.3.x | Manejo de entidades y queries |
| mysql2 | ^3.x | Driver de conexión a MySQL |
| @nestjs/config | ^4.x | Variables de entorno |
| class-validator | ^0.14.x | Validación de DTOs |
| class-transformer | ^0.5.x | Transformación de datos |
| @nestjs/swagger | ^11.x | Documentación automática |
| multer | ^1.x | Subida de archivos (fotos) |

## Estructura del proyecto
```
src/
├── empleado/
│   ├── dto/
│   │   ├── create-empleado.dto.ts
│   │   └── update-empleado.dto.ts
│   ├── empleado.controller.ts
│   ├── empleado.entity.ts
│   ├── empleado.module.ts
│   ├── empleado.service.ts
│   └── foto.controller.ts
├── provincia/
│   ├── provincia.controller.ts
│   ├── provincia.entity.ts
│   ├── provincia.module.ts
│   └── provincia.service.ts
├── app.module.ts
└── main.ts
uploads/           ← fotos de empleados
database/
├── schema.sql
└── provincias.sql
```

## Endpoints disponibles

| Método | Ruta | Descripción |
|--------|------|-------------|
| GET | /empleado | Lista paginada con filtros |
| GET | /empleado/:id | Un empleado por ID |
| POST | /empleado | Crear empleado |
| PUT | /empleado/:id | Actualizar empleado |
| DELETE | /empleado/:id | Eliminar empleado |
| GET | /empleado/reporte | Todos los empleados |
| POST | /foto/upload | Subir foto |
| GET | /foto/:filename | Ver foto |
| GET | /provincia | Lista de provincias |
