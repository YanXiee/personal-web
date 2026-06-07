# Dev Log — Pin Chen Portfolio

## How to Use

每次有重大改動時，在最上方加一個新的日期區塊：

```
## YYYY-MM-DD

### Content Changes
- 改了什麼內容、文字、圖片（記在 My Background/content-log.md）

### Technical Changes
- 改了什麼 CSS、HTML 結構、功能
```

- 小改動（錯字、顏色微調）不需要記錄
- 每次 deploy 前可以順手更新
- Content changes 請記在 `My Background/content-log.md`（不會被 push）

---

## 2026-06-07 (Session 4)

### Technical Changes

- Hero layout: photo moved inside `hero-bottom` (alongside buttons); absolute positioned to right on wide screens (`position: absolute; right: 0; top: 50%; transform: translateY(-50%)`); hero-wrapper gets `padding-right: calc(200px + 64px)` to compensate
- Photo size: 200px desktop → 150px mobile (`.profile-frame`)
- `hero-ctas`: added `flex: 1` on mobile so buttons stretch to fill available width
- `about-row`: `align-items: start` → `align-items: center`
- Contact form: Name + Email wrapped in `.form-row` (CSS grid 2-col on wide, 1-col on narrow)
- `contact-wrapper`: changed from 2-col grid to flex column (LinkedIn + form both full-width)
- Core Strengths: moved from About Me subsection → standalone `<section id="strengths">`; added to navbar
- Navbar: updated labels (About Me, Core Strengths, Key Expertise, Publications, Work With Me)
- Publications section: added ACS Fall 2023 oral, ACS Spring 2022 poster; reordered chronologically (ECS 2026 → Inorg. Chem. 2025 → JACS 2023 → ACS Fall 2023 → ACS Spring 2022)
- git: fresh-start branch renamed to main; upstream set to origin/main

---

## 2026-06-07 (Session 3)

### Technical Changes

- deploy.command: shows current latest git tag before prompting for new version
- .gitignore (Pin-Web): fixed — added `My Background/`, removed duplicate entry; untracked My Background/ from git history via `git rm --cached`

---

## 2026-06-07 (Session 2)

### Technical Changes

- .about-row: single column on ≤768px; gap reduced to 24px
- .edu-icon-container: added flex-shrink: 0 to prevent compression
- Battery head (::after): fixed alignment with top: 50%; transform: translateY(-50%)
- Battery charging animation: transitions to green (#22c55e) when fully charged
- Hero mobile: removed text-align: center; align-items/badge/ctas → flex-start
- Hero buttons: flex: 1 equal width on desktop; flex-direction: column + width: 100% on mobile (≤768px)
- Section border-bottom: removed (rely on alternating backgrounds for separation)
- .gitignore: created; added Pin_Chen_GM_Research_Presentation_2026.pdf

---

## 2026-06-07

### Technical Changes

- Theme: dark green/cyan → Apple-style white/blue (`--primary: #0071e3`)
- Body background: `#f5f5f7` → `#ffffff`; alternating sections use `#f5f5f7`
- Font: Google Fonts removed → Apple system font stack (`-apple-system, BlinkMacSystemFont, "Segoe UI"`)
- Icons: switched from hand-coded SVGs to Tabler Icons webfont (CDN)
- Particle animation (ChemBackground): removed from script.js
- Section structure: added `section-content` wrapper for full-width alternating backgrounds
- Biography layout: restructured from two-column (cards | text) to three paired rows (card + paragraph each)
- Header: `rgba(255,255,255,0.72)` + `saturate(180%) blur(20px)` to match Apple navbar
- Section dividers: `2px solid rgba(0,0,0,0.2)`
- Section title underline: `width: 100%` blue gradient bar
- `scroll-margin-top: 30px` on sections to prevent fixed header overlap
- `btn-secondary:hover`: fixed invisible button bug (was using dark-theme rgba values on white background)
- Hamburger menu: moved to right side of navbar
- About section nav link: removed hardcoded `class="active"`
- Footer: fixed invalid `class="max-width:..."` attribute
- Added `View CV` button in hero linking to `PinChen_CV.pdf`
- Expertise cards: color-coded hover effects (green/blue/orange/purple/yellow)
- Research Approach cards: same color-coded hover effects applied
