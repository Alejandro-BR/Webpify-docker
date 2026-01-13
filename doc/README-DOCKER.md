# Webpify Docker

Official Docker image for **Webpify CLI**.  
Converts PNG, JPG, HEIC, and HEIF images to **WebP** automatically.

Powered by [webpify-cli on npm](https://www.npmjs.com/package/webpify-cli)


![npm version](https://img.shields.io/npm/v/webpify-cli)
![npm license](https://img.shields.io/npm/l/webpify-cli)
![npm downloads](https://img.shields.io/npm/dt/webpify-cli)

![Docker Version](https://img.shields.io/docker/v/alejandrobr/webpify/latest)
![Docker Pulls](https://img.shields.io/docker/pulls/alejandrobr/webpify)
![Docker Stars](https://img.shields.io/docker/stars/alejandrobr/webpify)

## 🚀 Quick Start

### Pull the image
```bash
docker pull alejandrobr/webpify:latest
````

> [!IMPORTANT]  
> Do not pass `--input` together with `--auto`. They are not compatible.

### Run in automatic mode (current directory)

```bash
docker run --rm -v $(pwd):/work alejandrobr/webpify:latest --auto
```

### Run with custom input/output folders

```bash
docker run --rm \
  -v /path/to/images:/input \
  -v /path/to/output:/output \
  alejandrobr/webpify:latest \
  --input /input \
  --output /output
```

> Fully automatic conversion without prompts.

## ℹ️ Notes

* Always installs the **latest version** of `webpify-cli` from npm.
* Ideal for scripts, CI/CD pipelines, or automated workflows.
* Interactive mode is available, but Docker does not provide a terminal prompt by default.

## 🙌 Credits

* [GitHub Webpify CLI](https://github.com/Alejandro-BR/Webpify-cli)
* [NPM Webpify CLI](https://www.npmjs.com/package/webpify-cli)
* [GitHub Webpify Docker](https://github.com/Alejandro-BR/Webpify-docker)

[Alejandro Barrionuevo Rosado](https://github.com/Alejandro-BR)

MIT License © 2026

