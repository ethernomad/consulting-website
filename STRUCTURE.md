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
│   ├── about.html            # Custom About page (unique layout)
│   ├── free-consultation.html # Custom Free Consultation page (unique layout)
│   ├── section.html          # Overrides theme's section.html for listing pages
│   └── service.html          # Generic service template — all 17 service pages use this
│                              # Content is driven by structured frontmatter in .md files
│                              # Suppported sections: hero, overview, services, process,
│                              #   info_cards, metric_grid, deliverables, FAQ, CTA
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

**Service page frontmatter** (all fields in `[extra]` for pages using `service.html`):

| Field | Type | Description |
|-------|------|-------------|
| `category` | String | Label above hero title (e.g., "Service", "Board-level advisory") |
| `hero_gradients` | Array[String] | Two CSS gradient stops for the hero background |
| `hero_tagline` | String (optional) | Bold statement below the title |
| `hero_sub` | String (optional) | Supporting paragraph in the hero (HTML safe) |
| `hero_secondary` | String | Label for the secondary CTA button |
| `hero_secondary_url` | String | URL for the secondary CTA button |
| `key_capabilities` / `key_capabilities_title` | Array[String] / String | Bullet list + heading in the hero sidebar |
| `overview_title` / `overview_label` | String | Heading + label for the overview section |
| `overview_body` | Array[String] | Paragraphs for the overview |
| `overview_metrics` | Array[{label, description}] | Metric cards in the overview (2-4 cols auto) |
| `services_grid_title` / `services_grid_label` / `services_grid_description` / `services_grid_cols` | String / String / String / Number | Section header + column count (default 3) |
| `services_grid_items` | Array[{icon, title, description, highlights[], recommended, link, link_text}] | Service cards with optional bullet list & link |
| `info_cards_title` / `info_cards_label` / `info_cards_description` / `info_cards_cols` | String / String / String / Number | 2-col card grid (configurable cols) |
| `info_cards_items` | Array[{icon, title, body[], highlights[], buttons[]}] | Cards with paragraphs, lists, and CTA buttons |
| `process_title` / `process_label` / `process_body` | String | Heading + body for the process/timeline section |
| `process_steps` | Array[{step, title, description}] | Timeline steps |
| `deliverables_title` / `deliverables_label` / `deliverables_description` | String | Heading for deliverables section |
| `deliverables_items` | Array[{icon, title, description, highlights[]}] | Deliverable metric cards |
| `metric_grid_title` / `metric_grid_label` / `metric_grid_body` / `metric_grid_cols` | String / String / String / Number | Metric grid header + column count (default 4) |
| `metric_grid_items` | Array[{label, description, color}] | Metric cards for timelines, key dates, etc. |
| `faq_title` / `faq_label` | String | Heading for FAQ section |
| `faq_items` | Array[{question, answer}] | Collapse accordion FAQ items |
| `cta_title` / `cta_label` | String | Heading for final CTA section |
| `cta_body` | String | Body text for final CTA |
| `cta_primary` / `cta_primary_url` | String | Primary CTA button label and URL |
| `cta_secondary` / `cta_secondary_url` | String (optional) | Secondary CTA button label and URL |
| `featured_panel_title` / `featured_panel_label` / `featured_panel_logo` | String | Deep-dive recommendation panel (logo optional) |
| `featured_panel_body` | Array[String] | Paragraphs for the featured panel |
| `featured_panel_metrics` | Array[{value, label, color}] | Stat badges in the featured panel |
| `featured_panel_buttons` | Array[{url, label, style, external}] | CTA buttons in the featured panel |
| `comparison_cols_title` / `comparison_cols_label` / `comparison_cols_description` | String | Side-by-side comparison section header |
| `comparison_cols_items` | Array[{title, label, label_color, logo, logo_text, logo_color, body[], features[], buttons[]}] | 2-column comparison cards with logos & CTAs |
| `comparison_cols_2_*` | (same as above) | Second comparison columns section |
| `comparison_table_title` / `comparison_table_label` / `comparison_table_description` | String | Feature comparison table header |
| `comparison_table_headers` | Array[String] | Column headers for comparison table |
| `comparison_table_rows` | Array[Array[String]] | Table data rows (first col is bold) |
| `comparison_table_2_*` | (same as above) | Second comparison table section |

**Important TOML rule**: All scalar `[extra]` fields must be defined before any `[[extra.xxx]]` array-of-tables lines. Mixing them causes TOML parser errors in Zola.

**Custom sections**: Pages with unique content (timeline milestones, framework deep-dives, etc.) can use the markdown body after `+++`. The template renders this via `page.content` in the `prose` section.

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
Edit the file to add:
- `template = "service.html"` in frontmatter
- Structured `[extra]` fields with all service content (see section above for available fields)
- All scalar fields must come before any `[[extra.xxx]]` array-of-tables
- No per-service template needed — the single `templates/service.html` handles all sections

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
