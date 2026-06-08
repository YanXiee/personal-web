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

## 2026-06-08 (Session 10)

### Technical Changes

- Scrollbar thumb: near-invisible white → Apple-style dark gray (`rgba(0,0,0,0.25)`), hover `rgba(0,0,0,0.4)`
- Hero buttons: `flex: 1` → `flex: none; width: 220px; white-space: nowrap`; column layout at ≤740px with `width: 250px`; photo breakpoint moved 992px → 1024px
- Hero wrapper: `grid-template-columns: 1.2fr 0.8fr` → `minmax(0, 740px) auto`; gap 64px → 40px; photo stays fixed once it appears
- pub-card: removed leftover `display: grid; grid-template-columns: auto 1fr` (`.pub-number` was already removed)
- pub-tag: default colors changed from cyan → blue (`rgba(0,113,227,0.1)` / `var(--primary)`)
- pub-link hover: `var(--text-primary)` → `var(--primary)`
- Dead CSS removed: `.pub-top .pub-tag { margin-bottom: 0 }`
- Contact section redesigned: "Contact Information" h3 removed; LinkedIn card restructured as `div.contact-item` with `a.contact-icon` (only icon is clickable link, not entire card); description text placed as `p.contact-desc` beside icon
- `a.contact-item:hover` scoped to `<a>` elements only (card hover removed)
- `contact-icon`: added `flex-shrink: 0; text-decoration: none`
- Send Message button: right-aligned via `<div style="text-align: right;">` wrapper; icon 18px → 15px
- Expertise card `::before` overlay: added color-specific overrides for all card colors (green/blue/orange/purple/yellow)
- Battery icon: border and `::after` changed from `var(--text-secondary)` → `currentColor` (inherits blue); size 44×20 → 32×15px; tip `::after` 4×10 → 3×8px
- About Me icons: 28px → 32px
- Borders darkened: `edu-icon-container`, `education-card`, `contact-item`, `contact-form`, form inputs/textarea — all `var(--border-color)` → `rgba(0,0,0,0.15)`

---

## 2026-06-08 (Session 9)

### Issues Found (Unresolved)

- **chuanpinchen.com 顯示舊版本** — 根本原因：chuanpinchen.com 是由 **Netlify** 託管，不是 GitHub Pages。`curl -sI` 確認 `server: Netlify`。
- **Netlify 連動斷掉** — 推測是 Session 4 fresh-start branch（重寫 git 歷史、改 branch 名為 main）導致 Netlify 與 GitHub repo 的自動 deploy 連線中斷。之後每次 push 只更新 GitHub Pages，Netlify 那邊沒收到。
- **錯誤修法** — 誤以為是 GitHub Pages CDN 問題，加了 CNAME 和 .nojekyll，無效。CNAME 已移除（否則 yanxiee.github.io/personal-web/ 會 redirect 到壞掉的 chuanpinchen.com）；.nojekyll 保留（無害）。
- **修復方式（待執行）** — 請 repo owner 登入 Netlify → 找到 chuanpinchen.com site → Site configuration → Build & deploy → 重新 link GitHub repo `personal-web`，branch 選 `main`，trigger deploy。步驟存於 `My Background/terminal.txt`。

---

## 2026-06-07 (Session 8)

### Technical Changes

- Publications: fixed italic scope — changed `.pub-journal { font-style: italic }` to `.pub-journal .pub-tag em { font-style: italic }`; wrapped journal names in `<em>` so only name is italic, year is upright
- Publications: removed `pub-authors` div from all 3 conference cards
- Publications: removed `pub-meta` (year) div from all 3 conference cards; year now embedded in tag text
- Publications: added year to journal tags ("Inorganic Chemistry 2025", "JACS 2023") and ECS conference tag ("249th ECS Meeting 2026")
- Publications: added `.pub-top` flex wrapper (align-items: baseline, gap: 16px) to place View Publisher link inline after author name
- `terminal.txt`: added as scratch file for copy-paste (not committed)

---

## 2026-06-07 (Session 7)

### Technical Changes

- `resources/` folder created; moved `profile.jpg`, `PinChen_CV.pdf`, `icon-180.png`, `icon-192.png`, `icon-512.png` into it
- Updated all paths in `index.html` (og:image, apple-touch-icon, CV link, profile img) and `manifest.json`
- Icon "P" offset adjusted from +20px → +8px for better visual centering
- `CLAUDE.md`: added rule to provide one-line deploy description on "完成"

---

## 2026-06-07 (Session 6)

### Technical Changes

- PWA support added for iOS "Add to Home Screen" standalone mode
- Created `manifest.json` (display: standalone, theme_color: #0071e3)
- Added to `<head>`: `apple-mobile-web-app-capable`, `apple-mobile-web-app-status-bar-style`, `apple-mobile-web-app-title`, `apple-touch-icon`, `theme-color`, `manifest` link
- Generated placeholder icons via ImageMagick: `icon-180.png` (apple-touch-icon), `icon-192.png`, `icon-512.png` — blue circle (#0071e3) with white "P"

---

## 2026-06-07 (Session 5)

### Technical Changes

- Created `CLAUDE.md` with project-specific AI assistant instructions (gitignored)
- `.gitignore`: added `CLAUDE.md`

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
