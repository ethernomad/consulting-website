set shell := ["bash", "-cu"]

default:
    just --list

# Build the site into public/
build:
    zola build

# Build drafts, future, and expired content too
build-all:
    zola build --drafts --future --expired

# Serve locally with live reload
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
    rm -rf public

# Open the local dev server after starting it
open:
    zola serve --open

# Create a new page: just new content/my-page.md
new path:
    zola new {{path}}
