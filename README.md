# Webpify Docker

Official Docker image for **Webpify CLI**.

Webpify converts PNG, JPG, HEIC, and HEIF images to **WebP**.  
This Docker image runs the CLI in Docker, respecting its original behavior.

Powered by: [webpify-cli on npm](https://www.npmjs.com/package/webpify-cli)

![npm version](https://img.shields.io/npm/v/webpify-cli)
![npm license](https://img.shields.io/npm/l/webpify-cli)
![npm downloads](https://img.shields.io/npm/dt/webpify-cli)

> [!IMPORTANT]  
> In development...

## 🐳 Docker Usage

> [!IMPORTANT]  
> Do not pass `--input` together with `--auto`. 
> They are not compatible. Use one or the other.

### 🚀 Quick Start

Convert all supported images in the current directory automatically:

```bash
docker run --rm -v $(pwd):/work alejandrobr/webpify --auto
````

* Uses `/work` (current directory) as input and output.
* Fully automatic, no prompts.

### 📂 Custom Input and Output

Use custom folders for input and output:

```bash
docker run --rm \
  -v ./images:/input \
  -v ./output:/output \
  alejandrobr/webpify \
  --input /input \
  --output /output
```

* Input folder: `/input` (maps to `./images` on host)
* Output folder: `/output` (maps to `./output` on host)
* Fully automatic.

## ℹ️ Notes for Users

* This image always installs the **latest version** of `webpify-cli` from npm.
* Runs in non-interactive mode when using `--auto` or `--input`.
* Ideal for CI/CD pipelines, scripts, or any automated workflow.
* For interactive use, you can omit flags, but Docker won't provide a terminal prompt by default.

## 🛠️ Commands and Options

* `--input "<path>"`
  Automatically converts all images in the specified folder.

  ```bash
  webpify --input "path/to/images"
  ```

* `--output "<path>"`
  Sets a custom folder to save converted images.
  Can be combined with:

  * `--input`
  * `--auto`
  * **Interactive mode**

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

## 📁 Supported Formats

| Input Format | Output Format             |
| ------------ | ------------------------- |
| PNG          | WebP                      |
| JPG / JPEG   | WebP                      |
| HEIC         | JPG (intermediate) → WebP |
| HEIF         | JPG (intermediate) → WebP |

## 🙌 Credits

* [GitHub Webpify CLI](https://github.com/Alejandro-BR/Webpify-cli)
* [npm Webpify CLI](https://www.npmjs.com/package/webpify-cli)

[Alejandro Barrionuevo Rosado](https://github.com/Alejandro-BR)

MIT License – © 2026
