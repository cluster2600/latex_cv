# CV LaTeX — Maxime Grenu

Modular LaTeX CV using `moderncv` (classic/blue), designed for Maxime Grenu — Senior AI Infrastructure Architect. Supports multiple language and role variants.

## Quick Start

```bash
# Clone
git clone https://github.com/cluster2600/latex_cv.git
cd latex_cv

# Build English CV (default, AI infra focus)
make en

# Build French CV
make fr

# Generate targeted PDF (language, company, role)
./generate.sh en Logitech "Head of AI"
./generate.sh fr BMC "Chef d'équipe IT"

# QA: verify 2 pages, photo=100pt, cert codes
make qa
```

## Prerequisites

- **XeLaTeX** (recommended) — part of MacTeX / TeX Live
  ```bash
  # macOS
  brew install --cask mactex-no-gui
  # or: https://www.tug.org/mactex/
  ```
- **pdfinfo** (for `make qa`) — part of poppler-utils
  ```bash
  brew install poppler
  ```
- A photo file named `photo.jpg` in the project root

## Project Structure

```
latex_cv/
├── cv_template.tex     # Main entry point — personal info, language, version
├── cv_versions.tex     # Skill sets per version (ai-infra, it-management, devops)
├── profile.tex         # Professional profile paragraph
├── skills.tex          # Calls \cvskills from cv_versions.tex
├── experience.tex      # 12 real professional experiences
├── education.tex       # BTS CESI 1999–2001
├── certifications.tex  # 2-column layout, colored groups, all real certs
├── languages.tex       # French/English/Japanese
├── references.tex      # Available on request
├── keywords.tex        # ATS keywords (hidden)
├── Makefile            # Build targets: en, fr, qa, clean, rebuild
├── generate.sh         # Smart PDF generator with QA pre-checks
└── photo.jpg           # Professional headshot (not committed to public repo)
```

## Makefile Targets

| Command        | Description                                          |
|----------------|------------------------------------------------------|
| `make` / `make en` | Build English CV (ai-infra version) → `cv_template.pdf` |
| `make fr`      | Build French CV (it-management) → `cv_maxime_grenu_fr.pdf` |
| `make qa`      | QA checks: 2 pages, photo=100pt, correct cert codes |
| `make clean`   | Remove LaTeX auxiliary files                        |
| `make rebuild` | Clean + build                                       |
| `make help`    | Show help                                            |

## generate.sh

```
Usage: ./generate.sh [fr|en] [company] [role]

Examples:
  ./generate.sh en Logitech "Head of AI"
  ./generate.sh fr BMC "Chef d'équipe IT"
  ./generate.sh en SIB "AI Infrastructure Lead"
```

- Runs pre-flight QA checks before compiling
- Patches language and cv version automatically
- Restores `cv_template.tex` after compilation
- Names output: `CV_Maxime_Grenu_EN_Logitech_Head_of_AI_20250218.pdf`
- Opens the PDF automatically on macOS

## CV Versions

Set via `\cvversion{...}` in `cv_template.tex`:

| Version         | Focus                                        |
|-----------------|----------------------------------------------|
| `ai-infra`      | LLM/RAG, GPU clusters, AI infrastructure     |
| `it-management` | Team leadership, ITSM, digital transformation |
| `devops`        | CI/CD, IaC (Terraform/Ansible), cloud        |

## ABSOLUTE RULES (never change)

1. **Photo:** `\photo[100pt][0.4pt]{photo.jpg}` — width MUST be 100pt
2. **Pages:** exactly 2 pages — review if layout changes
3. **Experiences:** only from gold standard files — NEVER invent
4. **EXPERIS:** description = "Mission interne ManpowerGroup Suisse" (FR) / "internal ManpowerGroup Switzerland mission" (EN) — NEVER "institution financière"
5. **OCI AI Foundations:** cert code = `1Z0-1122-25` — NEVER `1Z0-1151-25`
6. **Certifications:** 2-column format with colored group headers

## Gold Standard Sources

For any update to real experience data, always read:
- `~/Documents/Job_search_2024/Logitech/CV_Maxime_Grenu_EN_HeadAI_Logitech.tex` — EN gold standard
- `~/Documents/Job_search_2024/BMC_SA_ChefEquipeIT/CV_Maxime_Grenu_FR_ChefEquipeIT_BMC.tex` — FR gold standard

## CI/CD

GitHub Actions automatically builds the CV on push to `main`. PDF available as artifact in the Actions tab.

## License

MIT License — see `LICENSE` file.
