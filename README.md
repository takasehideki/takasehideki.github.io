# takasehideki.github.io

This repository now serves a HugoBlox Academic CV site directly from the repository root.

The previous hand-written HTML site has been preserved under `legacy-site/` as an archive during the migration.

## Docker workflow

The local toolchain is containerized so Hugo, Go, Node.js, pnpm, Dart Sass, and the HugoBlox CLI do not need to be installed directly on the host.

### Build the image

```bash
docker compose build
```

### Check the toolchain

```bash
docker compose run --rm hugoblox hugo version
docker compose run --rm hugoblox hugoblox version
```

### Initialize HugoBlox Academic CV in this repository

Do this only after deciding how to preserve the current HTML site files.

```bash
docker compose run --rm hugoblox hugoblox create site --template academic-cv
```

If the template asks for a project folder name, use `academic-cv` to keep the generated site isolated from the legacy HTML files.

### Start the Hugo development server

```bash
docker compose up site
```

The local preview will be available at http://localhost:1313.

To stop it:

```bash
docker compose stop site
```

### Build the generated site

```bash
docker compose run --rm build-site
```

If you prefer `up` style execution instead:

```bash
docker compose up build-site
```

## Structure

- `content/`, `data/`, `config/`, `assets/`, `layouts/`, `static/`: active Hugo site source.
- `.github/workflows/`: GitHub Pages build and deploy workflows.
- `legacy-site/`: archived pre-Hugo HTML, CSS, JS, and images.

## Deployment

GitHub Pages deployment is handled by the workflows in `.github/workflows/`.