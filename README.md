# Kitsng Packages Documentation

This repository contains the web-hosted documentation for Kitsng Angular packages (v20).

## Structure

- `index.html` - Main landing page
- `docs/` - Generated HTML documentation
  - `form-factory/` - Form Factory documentation
  - `table-factory/` - Table Factory documentation
- `v20/` - Original markdown documentation files

## GitHub Pages Setup

To host this documentation on GitHub Pages:

1. Go to your repository settings
2. Navigate to "Pages" section
3. Under "Source", select the branch (usually `main`)
4. Select the root directory (`/`)
5. Click "Save"

The documentation will be available at: `https://[username].github.io/kitsng-packages-docs/`

## Local Development

To view the documentation locally:

1. Simply open `index.html` in a web browser
2. Or use a local server:
   ```bash
   # Python 3
   python3 -m http.server 8000
   
   # Node.js
   npx http-server
   ```

Then visit `http://localhost:8000`

## Regenerating Documentation

If you update the markdown files in `v20/`, regenerate the HTML:

```bash
python3 convert_markdown.py
python3 fix_navigation.py
python3 fix_links.py
```

## Features

- ✅ Responsive design with Tailwind CSS
- ✅ Syntax highlighting with Prism.js
- ✅ Sidebar navigation
- ✅ Clean, modern UI
- ✅ Mobile-friendly

## Technologies

- **Tailwind CSS** - Utility-first CSS framework (via CDN)
- **Prism.js** - Syntax highlighting for code blocks
- **HTML5** - Semantic markup
