# Contributing to the CEA Landscape

The CEA Landscape is community-maintained. All additions, corrections, and improvements are welcome.

---

## How to Add Your Tool or Company

### Option A — Pull Request (preferred, fastest)

1. **Fork** this repository
2. **Edit `data.yml`** — add your entry following the existing format:
   ```yaml
   - item:
     name: Your Company
     homepage_url: https://yoursite.com
     logo: your-company.svg
     description: One or two sentences describing what you do in CEA.
   ```
3. **Add your logo** — place an SVG file in the `logos/` directory. Name it to match the `logo:` field in `data.yml`.
4. **Open a Pull Request** — automated validation will check your YAML immediately. A maintainer will review and merge.

### Option B — GitHub Issue

Not comfortable with Git/YAML? [Open an issue](https://github.com/vhark/cea-landscape/issues/new/choose) using the **"Add a Tool or Company"** template and a maintainer will handle the PR for you.

---

## Logo Guidelines

- Format: **SVG** (required)
- Aspect ratio: Square or landscape preferred
- Background: Transparent preferred; solid white acceptable
- File size: Keep under 100KB
- Naming: lowercase, hyphenated, matching the `logo:` field (e.g., `my-company.svg`)

---

## Description Guidelines

- **Length:** 1–2 sentences maximum
- **Tone:** Factual and neutral — this is a directory, not an ad
- **Scope:** Focus on what the product does in the context of CEA, not general company history
- ✅ Good: *"Wireless CO2 and climate sensors designed for commercial cultivation environments."*
- ❌ Bad: *"The world's leading provider of next-generation sensor solutions trusted by thousands of customers globally."*

---

## Category Structure

| Category | Subcategories |
|---|---|
| Sensors & Monitoring | Climate & CO2, Substrate & Root Zone, Water Quality |
| Control Systems | Environmental Control, Lighting, Irrigation & Fertigation |
| Software & Analytics | Grow Management, Data & Analytics, Compliance & Seed-to-Sale |
| Connectivity & Integration | IoT Protocols & Middleware, Cloud Platforms |
| Infrastructure & Facilities | Vertical Farming, Greenhouse Construction |
| Marketplaces & Services | Equipment & Supplies, Consulting & Integration |

If your tool doesn't fit an existing subcategory, suggest a new one in your PR description.

---

## Validation

Every PR automatically runs `landscape2 validate` on the data, settings, and guide files. If validation fails, check:

- YAML indentation (use 2 spaces, not tabs)
- Required fields: `name`, `homepage_url`, `logo`, `description`
- Logo file exists in `logos/` and matches the `logo:` field exactly
- Homepage URL is a working link

---

## Code of Conduct

Be respectful. This landscape serves the entire CEA ecosystem — competitors, open source projects, and commercial vendors alike. We do not accept submissions that disparage other listed organizations.

---

## Questions?

Open a [Discussion](https://github.com/vhark/cea-landscape/discussions) or [Issue](https://github.com/vhark/cea-landscape/issues).
