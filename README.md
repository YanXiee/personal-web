# Chuan-Pin (Pin) Chen — Personal Portfolio

Personal academic and professional portfolio website for Chuan-Pin (Pin) Chen, PhD. Materials scientist and Postdoctoral Appointee at Argonne National Laboratory.

## Tech Stack

- Plain HTML / CSS / JavaScript (no framework)
- [Tabler Icons](https://tabler.io/icons) via CDN webfont
- Apple-style design system (SF Pro font stack, `#0071e3` blue, `#f5f5f7` gray)

## File Structure

```
Pin-Web/
├── index.html        # Main page
├── style.css         # All styles
├── script.js         # Mobile menu, scroll reveal, nav highlighting
├── profile.jpg       # Profile photo
├── PinChen_CV.pdf    # CV (linked from hero section)
├── deploy.command    # Double-click to deploy to GitHub Pages
└── dev-log.md        # Development log
```

## Local Development

Open `index.html` directly in a browser — no build step needed.

## Deployment

Double-click `deploy.command` (requires `chmod +x deploy.command` on first use). It will prompt for a commit message, then run `git add / commit / push` automatically.

The site is hosted on GitHub Pages and updates within a minute of pushing.
