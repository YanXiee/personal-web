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
