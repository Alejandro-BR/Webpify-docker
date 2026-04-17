# Webpify Docker

Imagen oficial de Docker para **Webpify CLI**.

Webpify convierte imágenes **PNG, JPG, HEIC y HEIF a WebP**.  

Esta imagen de Docker ejecuta la CLI respetando su comportamiento original.

[![npm version](https://img.shields.io/npm/v/webpify-cli?label=webpify-cli)](https://www.npmjs.com/package/webpify-cli)
[![npm license](https://img.shields.io/npm/l/webpify-cli)](https://github.com/Alejandro-BR/Webpify-cli/blob/main/LICENCE)
[![npm downloads](https://img.shields.io/npm/dt/webpify-cli)](https://www.npmjs.com/package/webpify-cli)
[![Docker Version](https://img.shields.io/docker/v/alejandrobr/webpify/latest)](https://hub.docker.com/r/alejandrobr/webpify)
[![Docker Pulls](https://img.shields.io/docker/pulls/alejandrobr/webpify)](https://hub.docker.com/r/alejandrobr/webpify)
[![Docker Stars](https://img.shields.io/docker/stars/alejandrobr/webpify)](https://hub.docker.com/r/alejandrobr/webpify)

---

## 🐳 Uso con Docker

```bash
docker pull alejandrobr/webpify:latest
```

> [!IMPORTANT]
> El modo interactivo no funcionará dentro de un contenedor.
>
> Cuando uses Docker, **debes usar `--auto` o `--input`**.

---

## 🚀 Inicio rápido desde Docker Hub

### 1️⃣ Descargar la imagen

```bash
docker pull alejandrobr/webpify:latest
```

### 2️⃣ Ejecutar en modo automático (directorio actual)

```bash
docker run --rm -v $(pwd):/work alejandrobr/webpify:latest --auto
```

* `/work` se mapea a tu carpeta actual en el host.
* Convierte automáticamente todas las imágenes compatibles en la carpeta actual.

### 3️⃣ Ejecutar con carpetas de entrada/salida personalizadas

```bash
docker run --rm \
  -v /ruta/a/imagenes:/input \
  -v /ruta/a/salida:/output \
  alejandrobr/webpify:latest \
  --input /input \
  --output /output
```

* La carpeta de entrada `/input` se mapea a `/ruta/a/imagenes` en tu computadora.
* La carpeta de salida `/output` se mapea a `/ruta/a/salida`.
* Conversión completamente automática sin necesidad de confirmaciones.

---

## ℹ️ Notas para usuarios

* Esta imagen siempre instala la **última versión** de `webpify-cli` desde npm.
* Se ejecuta en modo no interactivo al usar `--auto` o `--input`.
* Ideal para pipelines de CI/CD, scripts o cualquier flujo de trabajo automatizado.

---

## 🛠️ Comandos y opciones

* `--input "<ruta>"`
  Convierte automáticamente todas las imágenes en la carpeta indicada.

  ```bash
  webpify --input "ruta/a/imagenes"
  ```

* `--output "<ruta>"`
  Carpeta personalizada para guardar las imágenes convertidas.
  Se puede combinar con `--input`, `--auto` o el modo interactivo.

  ```bash
  webpify --input "ruta/a/imagenes" --output "ruta/a/convertidas"
  webpify --auto --output "ruta/a/webp"
  webpify --output "ruta/a/salida"
  ```

* `--auto`
  Convierte automáticamente todas las imágenes en el directorio de trabajo sin confirmaciones:

  ```bash
  webpify --auto
  ```

* `--es`
  Cambia la interfaz al idioma español:

  ```bash
  webpify --es
  ```

* `--about`
  Muestra información del autor y del proyecto:

  ```bash
  webpify --about
  ```

* `--version` o `-V`
  Muestra la versión actual:

  ```bash
  webpify --version
  ```

* `--help` o `-h`
  Muestra los comandos de ayuda:

  ```bash
  webpify --help
  ```

---

## 📁 Formatos compatibles

| Formato de entrada | Formato de salida       |
|--------------------|-------------------------|
| PNG                | WebP                    |
| JPG / JPEG         | WebP                    |
| HEIC               | JPG (intermedio) → WebP |
| HEIF               | JPG (intermedio) → WebP |

---

## 🌐 Versión en inglés

Para la versión en inglés de este README:
[README in English](../README.md)

---

## 🙌 Autor

[Alejandro Barrionuevo Rosado](https://github.com/Alejandro-BR)

- [GitHub Webpify CLI](https://github.com/Alejandro-BR/Webpify-cli)
- [npm](https://www.npmjs.com/package/webpify-cli)
- [Docker Hub](https://hub.docker.com/r/alejandrobr/webpify)
- [Wiki](https://github.com/Alejandro-BR/Webpify-cli/wiki)

Licencia MIT – © 2025-2026
