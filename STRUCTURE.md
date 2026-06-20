# Project Structure

## Overview

AI Agency — a static marketing site for an AI consulting business. Built with [Zola](https://www.getzola.org/) (Rust static site generator), the **Acuity** theme, **Tailwind CSS v4**, and **DaisyUI v5**.

Output is published to the `docs/` directory (GitHub Pages style).

---

## Directory Layout

```
.
├── content/                  # Markdown pages (Zola content)
│   ├── _index.md             # Home page (landing section)
│   ├── about.md              # About page
│   ├── contact.md            # Contact form page
│   ├── technology.md         # Technology stack page
│   ├── training.md           # Training page
│   ├── ai-strategy.md        # Service page: AI Strategy
│   ├── ai-cost-optimization.md
│   ├── ai-production-hardening.md
│   ├── startup-support.md
│   ├── ai-change-management.md
│   ├── model-training.md
│   ├── ai-voice-agents.md
│   ├── generative-ai.md
│   ├── business-agent.md
│   ├── agentic-coding.md
│   ├── app-building.md
│   ├── custom-agent.md
│   ├── private-inference.md
│   ├── ai-governance.md
│   ├── vn-ai-law.md
│   ├── ai-safety.md
│   └── news/                 # Blog/news section
│       ├── _index.md          # News listing (paginated, 10 per page, sorted by date)
│       ├── claude-fable-5-shutdown.md
│       ├── glm-52-launch.md
│       └── google-okf.md
│
├── templates/                # Project-level template overrides (takes precedence over theme)
│   ├── 404.html              # Custom 404 page (extends base.html, renders via hero-grid)
│   ├── section.html          # Overrides theme's section.html for listing pages
│   └── ...                   # One-per-page service templates (optional overrides)
│
├── themes/acuity/            # Acuity theme
│   ├── theme.toml            # Theme metadata (name, min Zola version)
│   ├── README.md
│   ├── src/
│   │   └── styles.css        # Tailwind CSS v4 entry point (CSS-first config)
│   ├── static/
│   │   ├── theme.css         # Built CSS output (Tailwind + DaisyUI + Lightning CSS)
│   │   └── app.css           # Legacy artifact (empty/residual)
│   └── templates/
│       ├── base.html         # Base layout — nav, footer, theme toggle, <head>
│       ├── index.html        # Landing page template (hero, services grid, news preview)
│       └── page.html         # Individual page template (article layout)
│
├── static/                   # Static assets (copied as-is to output)
│   ├── CNAME                 # Custom domain for GitHub Pages
│   ├── fonts/                 # Self-hosted Nunito woff2 fonts (latin + latin-ext + vietnamese)
│   │   ├── nunito-400.woff2
│   │   ├── nunito-500.woff2
│   │   ├── nunito-600.woff2
│   │   ├── nunito-700.woff2
│   │   └── nunito-800.woff2
│   ├── adk-rust-logo.svg
│   ├── dograh-logo.svg
│   ├── liquidos-logo.svg
│   ├── livekit-logo.svg
│   ├── opencode-logo-dark.svg
│   └── opencode-logo-light.svg
│
├── docs/                     # Build output directory (published)
│   ├── index.html
│   ├── about/index.html
│   ├── ... (mirrors content/ structure)
│   ├── sitemap.xml
│   ├── search_index.en.js    # Elasticlunr search index (Zola-generated)
│   ├── robots.txt
│   └── CNAME
│
├── zola.toml                 # Zola site configuration
├── package.json              # pnpm dependencies (Tailwind + DaisyUI + Lightning CSS)
├── tailwind.config.js        # Stub only — Tailwind v4 uses CSS-first config
├── justfile                  # Build automation recipes
├── AGENTS.md                 # AI agent instructions (pnpm, DaisyUI conventions)
├── STRUCTURE.md              # This file
└── .gitignore
```

---

## Build Pipeline

```
just install    →  pnpm install
just css-build  →  tailwindcss → theme.css → lightningcss (minify)
just build      →  css-build + zola build (output: docs/)
just serve      →  zola serve  (dev server with live reload)
just css-watch  →  tailwind --watch  (run alongside `just serve`)
```

The CSS pipeline runs **before** Zola so that the final `theme.css` is ready for Zola to copy.

---

## Content Model

### Frontmatter (Zola page frontmatter)

Every `.md` file in `content/` uses Zola's TOML frontmatter (`+++`):

| Field          | Required | Description |
|----------------|----------|-------------|
| `title`        | yes      | Page title |
| `description`  | yes      | Meta description + card excerpt |
| `date`         | no       | ISO date (used by `news/*.md` for sorting) |
| `authors`      | no       | Array of strings (e.g., `["AI"]`) |
| `[extra]`      | no       | Optional extra fields (see below for structured variants) |
| `extra.image`  | no       | Hero/thumbnail image filename (relative to static/) |

**Structured extra fields** (used by `about.md`):

| Field | Type | Description |
|-------|------|-------------|
| `extra.social` | Array of `{name, url, icon}` | Social/profile links rendered as buttons (supports `icon: "github"` \| `"linkedin"`) |
| `extra.skills` | Array of `{name, icon}` | Skill badges displayed in the expertise section |

Example:
```toml
[[extra.social]]
name = "GitHub"
url = "https://github.com/jbrown"
icon = "github"

[[extra.skills]]
name = "Rust"
icon = "🦀"
```

**News section** (`content/news/_index.md`):
- `sort_by = "date"` — pages sorted newest-first
- `paginate_by = 10` — 10 articles per page

### Content hierarchy

```
Home (_index.md)
├── Free Consultation
├── About
├── Contact
├── Technology
├── Training
├── Consulting services (6 pages)
│   ├── AI Strategy
│   ├── AI Cost Optimization
│   ├── AI Production Hardening
│   ├── Startup Support
│   ├── AI Change Management
│   └── Training
├── Development services (8 pages)
│   ├── AI Model Training
│   ├── AI Voice Agents
│   ├── Generative AI
│   ├── Business Agent
│   ├── Agentic Coding
│   ├── App Building
│   ├── Custom Agent
│   └── Private Inference
├── Governance (3 pages)
│   ├── AI Governance
│   ├── VN AI Law
│   └── AI Safety
└── News (paginated blog section)
    ├── AI News listing
    └── Individual articles
```

---

## Template Architecture

```
base.html                  ← Everything extends this
├── index.html             ← Home/landing page (hero, services grid, testimonials, news preview)
├── page.html              ← Individual content page (article layout with optional image)
├── about.html             ← Custom about page with hero, timeline, skills grid, projects, philosophy, CTA
└── section.html           ← Listing page (for news pagination and service category listing)
```

**Template resolution order** (Zola convention):
1. `templates/` (project-level) — overrides
2. `themes/acuity/templates/` (theme)

---

## CSS / Theming

### DaisyUI themes

Two custom themes defined in `styles.css`:

- **`acuity`** — dark theme (warm stone palette)
- **`acuity-light`** — light theme (warm cream palette)

Theme toggle persisted in `localStorage` via inline JS in `base.html`.

### Custom utilities (defined in styles.css)

| Utility / Override   | Purpose |
|----------------------|---------|
| `hero-grid`          | Dot-grid background for the hero section |
| `glass-panel`        | Frosted-glass card (border + backdrop blur) |
| `metric-card`        | Glass card with glow shadow |
| `.prose` (base layer)  | Typography styles for `h2`, `h3`, `p`, `strong`, `a` inside `.prose` containers. No `@tailwindcss/typography` plugin — these are hand-written. |
| Mobile dropdown fix  | `@media (width < 64rem)` override in `styles.css` that resets `position-area` on the mobile dropdown container. DaisyUI v5 uses CSS Anchor Positioning (`position-area`) on the `.dropdown` parent, which Firefox mobile handles differently than desktop responsive mode, causing the dropdown to render narrow. Resets to standard `position: absolute` + `inset-inline-end: 0` positioning. |

### CSS source → output

```
themes/acuity/src/styles.css
    → [Tailwind CSS v4] + [DaisyUI v5]
    → themes/acuity/static/theme.css
    → [Lightning CSS] (minify)
    → themes/acuity/static/theme.css (overwritten, minified)
```

---

## Nav / Footer Structure

Navigation is hardcoded in `base.html` (not data-driven). Three dropdown menus:

1. **Consulting** — 6 links
2. **Development** — 8 links
3. **Governance** — 3 links

Plus standalone links: About, AI News, Contact Us.

Footer mirrors the nav structure using the `footer` DaisyUI component.

---

## Key Conventions

| Convention | Rule |
|---|---|
| **Package manager** | Always use `pnpm`, never `npm` |
| **UI components** | Prefer DaisyUI components before building custom primitives |
| **CSS** | CSS-first Tailwind v4 — `tailwind.config.js` is a stub, all config lives in `styles.css` |
| **Output dir** | `docs/` (configured in `zola.toml`) |
| **Images** | Place in `static/`, reference in frontmatter as `extra.image = "filename.jpg"` |
| **News images** | Stored in `static/` alongside content; referenced by filename only |
| **Page templates** | Add a `.html` in `templates/` matching the content slug to override theme |

---

## Common Tasks

### Add a new service page
```bash
zola new content/my-new-service.md
```
Then add the page frontmatter, optionally create `templates/my-new-service.html` if needed.

### Add a news article
```bash
zola new content/news/my-article.md
```
Ensure frontmatter includes `date` and `authors`. Optionally add `extra.image`.

### Change CSS
Edit `themes/acuity/src/styles.css`, then run `just css-build` (or `just build`).

### Publish
```bash
just build
git add docs/
git commit -m "publish"
git push
```
