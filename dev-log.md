# Dev Log — Pin Chen Portfolio

## How to Use

每次有重大改動時，在最上方加一個新的日期區塊：

```
## YYYY-MM-DD

### Content Changes
- 改了什麼內容、文字、圖片

### Technical Changes
- 改了什麼 CSS、HTML 結構、功能
```

- 小改動（錯字、顏色微調）不需要記錄
- 每次 deploy 前可以順手更新

---

## 2026-06-07 (Session 3)

### Content Changes

- Research & Data Tools description rewritten: broader, ends with "turning raw data into scientific results and publications"
- Publications reordered: 2026 ECS → 2025 Inorg. Chem. → 2023 JACS (newest first)
- Research Interests paragraph: "My research investigates..." → "My research at Argonne investigates..."

### Technical Changes

- deploy.command: shows current latest git tag before prompting for new version
- .gitignore (Pin-Web): fixed — added `My Background/`, removed duplicate entry; untracked My Background/ from git history via `git rm --cached`

---

## 2026-06-07 (Session 2)

### Content Changes

- Hero badge: "Open to Materials & Energy R&D Opportunities" → "Open to R&D Opportunities in Materials and Energy"
- Hero description: rewrote to "A materials scientist who uses characterization and synthesis to understand why materials behave the way they do, currently at Argonne National Laboratory working on developing next-generation polymer membranes."
- About section title: "About" → "About Me"; removed "Biography" subheading
- Added KLA internship as 4th about-row: Organic Chemist, Intern / KLA
- Removed status labels (Current, Alumnus) from education cards; Intern moved into title
- "Chemistry Research" → "Research Interests"; edu-school merged into one line
- Argonne paragraph: removed redundant opening sentence
- PhD paragraph: added "electrocatalytic" and "Raman spectroscopy"
- Research Interests paragraph: rewrote to remove AI-ish phrasing
- KLA paragraph: written and refined
- Core Strengths: removed Multimodal Characterization card (4 → 3 cards)
- Core Strengths descriptions rewritten with specific real examples (Structure-Property, Interdisciplinary Collaboration, Independent Problem-Solving)
- Key Expertise descriptions updated: Characterization, Materials Synthesis, Laboratory Operations
- Multiple AI-ish phrases replaced across Core Strengths and Key Expertise
- Publications: added ECS 249th Meeting oral presentation card (purple tag)
- Publications: simplified meta to year only (removed volume/page numbers)
- Publications section-desc: "13 peer-reviewed publications; 1 patent application pending."

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

### Content Changes

- Replaced all fabricated content with accurate CV-based content
- Name: updated to "Chuan-Pin (Pin) Chen, PhD"
- Hero badge: "Open to Materials & Energy R&D Opportunities" (green dot)
- Hero description: materials scientist, Argonne, polymer membranes / spectroscopy / electrochemistry
- Biography: three paragraphs — Argonne postdoc → MSU PhD → research summary
- Research Approach cards: Multimodal Characterization / Structure-Property Thinking / Interdisciplinary Collaboration / Independent Problem-Solving
- Key Expertise cards (5): Characterization / Electrochemistry / Materials Synthesis / Research & Data Tools / Laboratory Operations
- Characterization chips: NMR, FTIR, Raman, UV-Vis, Fluorescence, APS (SAXS/GISAXS), GPC, DLS
- Electrochemistry chips: CV, EIS, Conductivity
- Materials Synthesis chips: Inert Atmosphere, Inorganic Complexes, Polymers, Membranes, Thin-film
- Research & Data Tools chips: Mnova, Origin, Python
- Laboratory Operations chips: SOP, EHS, Lab Setup
- Publications: 2 real first-author papers (JACS 2023, Inorg. Chem. 2025); journal names in italics in biography
- Publications section-desc: "Visit Google Scholar" converted to inline link; standalone button removed
- Contact: removed Google Scholar card; replaced Work Location with LinkedIn only
- Meta tags / page title / og tags: updated from "Battery Scientist" to "Materials Scientist"
- Contact form placeholder: removed "battery engineering" reference
- CV file renamed: `Pin's CV.pdf` → `PinChen_CV.pdf`

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
