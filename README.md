# 🩺 Historial de Recetas Médicas

Aplicación Flutter que permite a los usuarios consultar de forma sencilla y rápida su historial de recetas médicas. Diseñada con una interfaz amigable y adaptable a dispositivos móviles y web. Este proyecto fue desarrollado como parte de un desafío técnico para postular a **Agucare**.

---

## 📱 Capturas

| Pantalla de inicio | Pantalla de login | Historial de recetas |
|--------------------|-------------------|-----------------------|
| ![Inicio](assets/images/pantalla_inicio.png) | ![Login](assets/images/pantalla_login.png) | ![Recetas](assets/images/pantalla_receta.png) |

---

## ✨ Funcionalidades

- Pantalla de bienvenida con branding personalizado.
- Autenticación simple con email y contraseña.
- Visualización del historial de recetas (simulado desde un servicio).
- Diseño limpio y responsive.
- Botón de recarga manual (pull to refresh).
- Manejo de errores con `SnackBar`.

---

## 🛠️ Tecnologías utilizadas

- **Flutter** 3.x
- **Dart**
- `FutureBuilder` para manejar llamadas simuladas tipo API
- Patrón `StatefulWidget` y navegación con `Navigator`
- Gestión de datos simulada mediante servicios locales

---

## 🚀 ¿Cómo correr el proyecto?

1. **Clona el repositorio:**
   ```bash
   git clone https://github.com/Magdasanhueza/historial_recetas.git
   cd historial_recetas
