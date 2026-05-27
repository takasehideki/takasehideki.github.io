# takasehideki.github.io

This repository is being migrated from a hand-written static site to HugoBlox Academic CV.

The generated HugoBlox site currently lives in the `academic-cv/` subdirectory while the legacy HTML site remains at the repository root during migration.

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

After the site has been initialized:

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

## Migration plan

1. Keep the current HTML site as the content source.
2. Initialize HugoBlox Academic CV.
3. Convert the profile, research, links, and activity pages into Markdown-managed Hugo content.
4. Keep publications as Markdown lists for now; move them to BibTeX later.