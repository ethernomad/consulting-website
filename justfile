set shell := ["bash", "-cu"]

default:
    just --list

# Install frontend tooling
install:
    pnpm install

# Build Tailwind and optimize with Lightning CSS
css-build:
    pnpm run build:css

# Watch Tailwind styles during development
css-watch:
    pnpm run dev:css

# Build the site into public/
build: css-build
    zola build

# Build drafts, future, and expired content too
build-all: css-build
    zola build --drafts --future --expired

# Serve locally with live reload (run `just css-watch` in another terminal)
serve:
    zola serve

# Serve including drafts, future, and expired content
serve-all:
    zola serve --drafts --future --expired

# Check the site for errors without building
check:
    zola check

# Clean generated output
clean:
    rm -rf public themes/acuity/static/app.css node_modules package-lock.json pnpm-lock.yaml

# Open the local dev server after starting it
open:
    zola serve --open

# Create a new page: just new content/my-page.md
new path:
    zola new {{path}}
