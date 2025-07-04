# Infraestructura para una Ecommerce

## Meta del proyecto

Se propone plantear una solución para la implementación de una empresa de comercio electrónico robusta y escalable.
La plataforma desea tener las siguientes características

- Soportar alto volúmen de transacciones
- Experiencia de usuario fluida desde un portal principal
- Gestión de productos y pedidos mediante un backoffice
- Ofrecer capacidades analíticas con los datos de ventas obtenidos

# Diseño de la arquitectura general

![ecommerce-architecture-general](https://github.com/user-attachments/assets/98d141e9-9c8d-40c4-bb88-ba6c9707fb0a)

# Recursos definidos en este repositorio

En este repositorio se encuentran las definiciones mediante Terraform de los siguientes recursos:

- App Service Plan
- Web Apps:
  - UI
  - API
- Azure Functions
  - Serverless para Notificaciones
  - Serverless para procesamiento de pagos
- Azure Queues
  - Cola de mensajes para Notificaciones
  - Cola de mensajes para procesamiento de pagos
- Azure Redis Cache

![ecommerce-architecture-client-async](https://github.com/user-attachments/assets/e3e148aa-0047-4405-8204-2b17816d8e03)

# Repositorios relacionados

1. *Definción de recursos para BackOffice* -> https://github.com/carlos-fl/ecommerce-infra-nginx-erp-db
2. *Definición de recursos para ETL (Análisis de datos)* -> https://github.com/carlos-fl/ecommerce-experts-etl-repo

# Archivos del repositorio

|     Archivo     |   Descripción                                                                          |
| --------------- |----------------------------------------------------------------------------------------|
|   main.tf       |     Define el proveedor y crea el grupo de recursos                                    |
| functions.tf    |  Define las Azure Functions (serverless)                                               |
| queues.tf       | Define las Azure queues (comunicación asíncrona)                                       |
|  storage.tf     | Define el contenedor donde estarán las queues                                          |
| rediscache.tf   | Define la instancia de Redis                                                           |
|  webapp.tf      | Define el app service plan y las web apps para la UI y la API                          |
| outputs.tf      | Muestra los nombres y configuraciones de recursos creados al ejecutar *terraform apply*|
| variables.tf    | Definición de variables                                                                |


# Detalles de la solución

[Informe solución Ecommerce con Azure](https://docs.google.com/document/d/1ezOdflO207IYb7VPjgMHN3QuSF-Ad6scydfD9Bdw7_0/edit?usp=sharing)
