# Dough Engineering — Landing Page

Hype-drop landing page for **Morgi (Moran)**, structural engineer turned sourdough obsessive.
Instagram: [@dough_engineering](https://instagram.com/dough_engineering) · 42K followers.

## Stack
- Single-file `index.html`
- Tailwind CSS via CDN
- Google Fonts: Heebo (UI) + JetBrains Mono (specs / numbers)
- RTL Hebrew, dark monochrome + crust-orange accent (`#E8743C`)

## Run locally
Just open `index.html` in a browser. No build step.

```bash
open index.html
# or
python3 -m http.server 8080
```

## Sections
1. **Hero** — engineered headline + spec sheet card
2. **About** — methodology, 42K social proof, engineer-to-baker pitch
3. **The Drop** — product card + scarcity progress bar (23/30 sold) + 3-step process
4. **FAQ** — direct, no-bullshit answers
5. **Final CTA** — loss-aversion close
6. **Footer**

## Push to GitHub

### Option A — GitHub CLI (recommended)
```bash
cd ~/Downloads/dough-engineering
git add .
git commit -m "feat: initial Dough Engineering landing page"
gh repo create dough-engineering --public --source=. --remote=origin --push
```

### Option B — Manual remote
```bash
cd ~/Downloads/dough-engineering
git add .
git commit -m "feat: initial Dough Engineering landing page"
# create empty repo at https://github.com/new named "dough-engineering"
git remote add origin https://github.com/<your-username>/dough-engineering.git
git branch -M main
git push -u origin main
```

## Customization quick-hits
- **Accent color**: `crust: '#E8743C'` in the Tailwind config block
- **Scarcity bar**: `style="width: 76.7%"` + `23 / 30 נמכרו` text
- **Copy**: all Hebrew strings are inline — search & replace
- **Pickup address**: footer + FAQ ("רחוב המסגר")
