# TechSpot - Tienda de Electrónicos

Bienvenido al proyecto de TechSpot, un sitio web interactivo para la tienda de electrónicos. Este documento proporciona una visión general del proyecto, su proceso de desarrollo, decisiones de diseño, desafíos encontrados y cómo se resolvieron.

## Índice

1. [Descripción del Proyecto](#descripción-del-proyecto)
2. [Estructura del Proyecto](#estructura-del-proyecto)
3. [Tecnologías Utilizadas](#tecnologías-utilizadas)
4. [Guía de Instalación](#guía-de-instalación)
5. [Guía de Uso](#guía-de-uso)
6. [Decisiones de Diseño](#decisiones-de-diseño)
7. [Desafíos y Soluciones](#desafíos-y-soluciones)
8. [Contribuir](#contribuir)

## Descripción del Proyecto

TechSpot es un sitio web diseñado para ofrecer a los clientes una experiencia de compra en línea fluida y atractiva. El sitio permite a los usuarios explorar una amplia gama de productos electrónicos, desde dispositivos móviles hasta equipos de entretenimiento doméstico, con un diseño adaptativo y fácil de usar.

## Estructura del Proyecto

El proyecto está organizado en la siguiente estructura de directorios:

  ```
/techspot
│
├── /css
│ ├── styles.css # Estilos personalizados
│
├── /images
│ ├── product1.jpg # Imágenes de productos
│ ├── product2.jpg
│
├── /js
│ ├── scripts.js # Scripts de JavaScript personalizados
│
├── index.html # Página principal
├── products.html # Página de productos
├── contact.html # Página de contacto
├── cart.html # Página del carrito de compras
└── README.md # Documentación del proyecto
  ```


## Tecnologías Utilizadas

- **HTML5**: Estructura del contenido.
- **CSS3**: Estilos y diseño adaptativo.
- **Bootstrap 5**: Framework CSS para componentes y diseño responsivo.
- **JavaScript**: Interactividad y manipulación del DOM.
- **GitHub**: Control de versiones y colaboración en el código.

## Guía de Instalación

Para ejecutar el proyecto en tu entorno local:

1. **Clonar el repositorio**:
   ```bash
   git clone https://github.com/tu-usuario/techspot.git
   
2. **Navegar al directorio del proyecto:**:
   ```bash
   cd techspot

3. **Abrir el archivo index.html** en tu navegador para ver el sitio en funcionamiento.

**Guía de uso**

**Inicio**: Página principal con un resumen de la tienda y enlaces a otras secciones.
**Productos**: Página con una lista de productos destacados. Cada producto tiene un enlace para ver más detalles.
**Contacto**: Formulario para que los clientes se pongan en contacto con el soporte.
**Carrito**: Página para gestionar los productos añadidos al carrito y proceder al pago.

**Decisiones de Diseño**

**Diseño Responsivo**: Utilizamos Bootstrap 5 para garantizar que el sitio sea accesible en dispositivos móviles y de escritorio.
**Interactividad**: Incorporamos elementos interactivos usando JavaScript para mejorar la experiencia del usuario, como la actualización dinámica de cantidades en el carrito.
**Estética**: La paleta de colores y las fuentes están diseñadas para crear un ambiente tecnológico y profesional.

**Desafíos y Soluciones**

**Desafío**: Diseño Adaptativo:
**Solución**: Implementamos Bootstrap 5 para manejar el diseño adaptativo y asegurarnos de que el sitio se viera bien en diferentes tamaños de pantalla.

**Desafío**: Integración con Backend:
**Solución**: Actualmente, el proyecto está configurado para un entorno estático. En futuras versiones, planeamos integrar una API para manejar el almacenamiento de productos y las interacciones del carrito.

**Contribuir**
**Las contribuciones al proyecto son bienvenidas.** Para contribuir:

Haz un Fork del Repositorio.
**Crea una Rama:**
   ```bash
git checkout -b nombre-de-tu-rama
  ```
Haz tus Cambios y Commits.
Envía un Pull Request.
