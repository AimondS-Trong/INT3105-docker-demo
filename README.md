# INT3105 Docker Demo

A small Docker demo: builds an Alpine-based image with a few packages (`curl`, `jq`, `bash`) and runs a script that prints some sample info.

## Run locally

```bash
docker build -t docker-demo .
docker run --rm docker-demo
```

## GitHub Actions

The [`.github/workflows/docker-publish.yml`](.github/workflows/docker-publish.yml) workflow builds and pushes the image to GitHub Container Registry (`ghcr.io`) on:

- Push to `main`
- Tags matching `v*.*.*`
- Pull requests into `main` (build only, no push)
- Manual run from the Actions tab (`workflow_dispatch`)

The image is published at:

```
ghcr.io/<owner>/<repo>:latest
```

After the first push, check **Settings > Packages** on the repo (or the package page on GitHub) to view or change visibility (public/private).

### Pull and run the published image

```bash
docker pull ghcr.io/<owner>/<repo>:latest
docker run --rm ghcr.io/<owner>/<repo>:latest
```
