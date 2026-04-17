# Webpify Docker

Official Docker image for **Webpify CLI**.

Webpify converts PNG, JPG, HEIC, and HEIF images to **WebP**.  

This Docker image runs the CLI in Docker, respecting its original behavior.

[![npm version](https://img.shields.io/npm/v/webpify-cli?label=webpify-cli)](https://www.npmjs.com/package/webpify-cli)
[![npm license](https://img.shields.io/npm/l/webpify-cli)](https://github.com/Alejandro-BR/Webpify-cli/blob/main/LICENCE)
[![npm downloads](https://img.shields.io/npm/dt/webpify-cli)](https://www.npmjs.com/package/webpify-cli)
[![Docker Version](https://img.shields.io/docker/v/alejandrobr/webpify/latest)](https://hub.docker.com/r/alejandrobr/webpify)
[![Docker Pulls](https://img.shields.io/docker/pulls/alejandrobr/webpify)](https://hub.docker.com/r/alejandrobr/webpify)
[![Docker Stars](https://img.shields.io/docker/stars/alejandrobr/webpify)](https://hub.docker.com/r/alejandrobr/webpify)

---

## 🐳 Docker Usage

```bash
docker pull alejandrobr/webpify:latest
```

> [!IMPORTANT]
> Interactive mode will **not work** inside a container.
>
> When using Docker, you **must use either `--auto` or `--input`**.

---

## 🚀 Quick Start with Docker Hub

### 1️⃣ Pull the image

```bash
docker pull alejandrobr/webpify:latest
```

### 2️⃣ Run in automatic mode (current directory)

```bash
docker run --rm -v $(pwd):/work alejandrobr/webpify:latest --auto
```

* `/work` maps to your current folder on the host.
* Automatically converts all supported images in the current folder.

### 3️⃣ Run with custom input/output folders

```bash
docker run --rm \
  -v /path/to/images:/input \
  -v /path/to/output:/output \
  alejandrobr/webpify:latest \
  --input /input \
  --output /output
```

* Input folder `/input` maps to `/path/to/images` on your computer.
* Output folder `/output` maps to `/path/to/output`.
* Fully automatic conversion without prompts.

---

## ℹ️ Notes for Users

* This image always installs the **latest version** of `webpify-cli` from npm.
* Runs in non-interactive mode when using `--auto` or `--input`.
* Ideal for CI/CD pipelines, scripts, or any automated workflow.

---

## 🛠️ Commands and Options

* `--input "<path>"`
  Automatically converts all images in the specified folder.

  ```bash
  webpify --input "path/to/images"
  ```

* `--output "<path>"`
  Sets a custom folder to save converted images.
  Can be combined with `--input`, `--auto`, or interactive mode.

  ```bash
  webpify --input "path/to/images" --output "path/to/converted"
  webpify --auto --output "path/to/webp"
  webpify --output "path/to/output"
  ```

* `--auto`
  Automatically converts all images in the current working directory without prompts:

  ```bash
  webpify --auto
  ```

* `--es`
  Switch interface language to Spanish:

  ```bash
  webpify --es
  ```

* `--about`
  Show author and project info:

  ```bash
  webpify --about
  ```

* `--version` or `-V`
  Show current version:

  ```bash
  webpify --version
  ```

* `--help` or `-h`
  Show help commands:

  ```bash
  webpify --help
  ```

---

## 📁 Supported Formats

| Input Format | Output Format             |
|--------------|---------------------------|
| PNG          | WebP                      |
| JPG / JPEG   | WebP                      |
| HEIC         | JPG (intermediate) → WebP |
| HEIF         | JPG (intermediate) → WebP |

---

## 🌐 Spanish Version

For the Spanish version of this README, check out:
[README in Spanish](./doc/README-ES.md)

---

## 🙌 Author

[Alejandro Barrionuevo Rosado](https://github.com/Alejandro-BR)

- [GitHub Webpify CLI](https://github.com/Alejandro-BR/Webpify-cli)
- [npm](https://www.npmjs.com/package/webpify-cli)
- [Docker Hub](https://hub.docker.com/r/alejandrobr/webpify)
- [Wiki](https://github.com/Alejandro-BR/Webpify-cli/wiki)

MIT License – © 2025-2026
