# Site refresh + Software page — Design

Date: 2026-07-08
Site: Jekyll (Minimal Mistakes theme, fully vendored in repo).

## Goal

1. Visual refresh: homepage first impression, overall polish, navigation, mobile.
2. New Software page showing the author's Julia packages as a responsive card grid.

## Approach

Option A — data-driven, within Minimal Mistakes. No JS. New packages added via one YAML entry.

## Deliverables

### 1. Homepage (`index.md`)
- Hero: name, one-line identity ("PhD student — ocean physics, Tel Aviv University"), buttons: CV, About, Software, Email.
- Short intro paragraph (keep author voice).
- Centered, improved type scale.

### 2. Software page
- `_pages/software.md` — page (layout: single), permalink `/software/`.
- `_data/software.yml` — list of packages (name, desc, docs, repo, install, lang).
- `_includes/software-cards.html` — renders responsive card grid from the data.
- Card: title (links to docs or repo), one-line description, `Julia` badge, install snippet (`] add X`), Docs button (if docs), GitHub button.
- Grid: CSS `repeat(auto-fit, minmax(...))` → multi-col desktop, stacks mobile. Cards hover-lift.

Packages:
| name | description | docs | repo |
|---|---|---|---|
| BiGSTARS.jl | Bi-global linear stability analysis for geophysical flows (Chebyshev–Fourier spectral collocation). | https://subhk.github.io/BiGSTARS.jl/stable/ | https://github.com/subhk/BiGSTARS.jl |
| SHTnsKit.jl | Comprehensive Julia implementation of the SHTns library (spherical harmonic transforms). | https://subhk.github.io/SHTnsKit.jl/ | https://github.com/subhk/SHTnsKit.jl |
| Tarang.jl | A (pseudo-)spectral PDE solver. | https://subhk.github.io/Tarang.jl/stable/ | https://github.com/subhk/Tarang.jl |
| GeoDynamo.jl | A Julia solver for rotating convection and dynamos in spherical shells and full balls. | — | https://github.com/subhk/GeoDynamo.jl |
| QGYBJplus.jl | Coupled QG–YBJ⁺ model for near-inertial waves and balanced flow. (placeholder desc) | — | https://github.com/subhk/QGYBJplus.jl |

### 3. Polish (`_sass` custom partial imported by `assets/css/main.scss`)
- Ocean-blue/teal accent color.
- Tighter type scale, spacing, link hover.
- Card styles: border, radius, subtle shadow, hover-lift, badge, code snippet styling.

### 4. Navigation (`_data/navigation.yml`)
- Add `Software` → `/software/` to main nav.

### 5. Mobile
- Grid stacks single column; hero buttons wrap; verified at narrow width.

## Non-goals
- No GitHub API / JS live feed.
- No theme/skin swap.
- No content rewrite beyond homepage hero + intro.

## Verification
- `bundle exec jekyll build` succeeds (or note if Ruby env unavailable).
- Software page renders 5 cards; links resolve.
- Nav shows Software.
- Narrow-width layout stacks.
