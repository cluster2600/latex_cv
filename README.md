# LaTeX CV Template Using `moderncv`

This repository contains a LaTeX template for creating a professional curriculum vitae (CV) using the `moderncv` class. The template is based on my own CV and is designed to help you create a clean and polished CV that stands out.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Usage](#usage)
  - [Compiling the CV](#compiling-the-cv)
  - [Customizing the CV](#customizing-the-cv)
  - [Makefile](#makefile)
  - [CI/CD with GitHub Actions](#cicd-with-github-actions)
  - [Conditional CV Versions](#conditional-cv-versions)
- [Sections Explained](#sections-explained)
- [Tips and Tricks](#tips-and-tricks)
- [Resources](#resources)
- [License](#license)
- [Acknowledgments](#acknowledgments)

## Introduction

Creating a CV using LaTeX allows for precise control over formatting and styling, resulting in a professional appearance that sets you apart in the job market. This template utilizes the `moderncv` class, which offers various styles and color themes to match your personal brand.

## Features

- Professional design using the `moderncv` class.
- Easy customization of styles and colors.
- Structured sections for skills, experience, education, and more.
- Support for multiple languages and special characters.
- Scalable and maintainable source code.
- Modular structure for easy editing.
- Automated PDF generation with GitHub Actions.
- Makefile for easy local compilation.
- Conditional CV versions to tailor your CV for different roles.

## Prerequisites

To use this template, ensure you have the following installed:

- **LaTeX Distribution**: TeX Live, MiKTeX, or MacTeX.
- **LaTeX Editor**: TeXstudio, Overleaf, or any text editor of your choice.

## Getting Started

1. **Clone the Repository**

   To get started, clone this repository using:

   ```bash
   git clone https://github.com/cluster2600/latex_cv.git
   ```

2. **Navigate to the Directory**

   Navigate to the project directory:

   ```bash
   cd latex_cv
   ```

3. **Open the Template**

   Open the `cv_template.tex` file in your LaTeX editor or IDE of choice.

## Usage

### Compiling the CV

To compile the LaTeX file and generate a PDF:

- **Using Command Line**: Run the following command:

  ```bash
  pdflatex cv_template.tex
  ```

- **Using LaTeX Editor**: Use the compile or build function provided by your editor.

- **Using Overleaf**: Upload `cv_template.tex` and the other `.tex` files to Overleaf, and it will compile automatically.

### Customizing the CV

To customize your CV, edit the `.tex` files in the root directory with your personal information and preferences. Each file corresponds to a section of the CV.

#### Personal Information

You can update your name, title, address, phone number, email, homepage, and add an optional photo in `cv_template.tex`.

#### Style and Color

The template allows customization of style (`classic`, `casual`, `banking`, etc.) and color (`blue`, `green`, `red`, etc.) in `cv_template.tex`.

#### Sections

The template includes structured sections such as `Professional Profile`, `Skills`, `Experience`, `Education`, `Certifications`, and `Languages`. You can add, remove, or modify these sections by editing the corresponding `.tex` files.

### Makefile

A `Makefile` is provided for easy local compilation.

- `make cv`: Compiles the CV and generates the PDF.
- `make clean`: Removes auxiliary files.
- `make rebuild`: Cleans and then compiles the CV.

### CI/CD with GitHub Actions

This repository is configured with a GitHub Actions workflow that automatically builds the CV whenever you push changes to the `main` branch. The generated PDF is available as a downloadable artifact in the "Actions" tab of the repository.

### Conditional CV Versions

You can create different versions of your CV by defining them in `cv_versions.tex` and then selecting the desired version in `cv_template.tex`. This is useful for tailoring your CV to specific job applications.

To select a version, change the following line in `cv_template.tex`:

```latex
\cvversion{it-management}
```

Available versions are `it-management` and `devops`. You can add more versions in `cv_versions.tex`.

## Sections Explained

### Professional Profile

Provide a concise paragraph highlighting your experience, skills, and career objectives in `profile.tex`.

### Skills

Organize your skills into categories for easy readability in `skills.tex`.

### Professional Experience

List your work history, detailing job title, company name, dates of employment, and key responsibilities or achievements in `experience.tex`.

### Education

Include your educational qualifications, such as degree, institution, and year of graduation in `education.tex`.

### Certifications

Add relevant certifications, including the issuing organization and the year they were obtained in `certifications.tex`.

### Languages

Highlight the languages you speak and your proficiency levels in `languages.tex`.

### References

Optionally include references or state that they are available upon request in `references.tex`.

## Tips and Tricks

- **Adjust Column Widths**: Modify column widths to adjust the layout.
- **Encoding**: Ensure the file is saved with UTF-8 encoding to support special characters.
- **Line Spacing**: Adjust line spacing to improve readability.
- **Consistent Formatting**: Use consistent date formats and bullet styles throughout.

## Resources

- **LaTeX Documentation**: Visit the [LaTeX Project](https://www.latex-project.org/help/documentation/) for complete documentation and help.
- **ModernCV Documentation**: Refer to [CTAN ModernCV](https://ctan.org/pkg/moderncv) for more information about the moderncv package.
- **Overleaf Guides**:
  - [LaTeX Tutorials](https://www.overleaf.com/learn/latex/Tutorials)
  - [CV Template Examples](https://www.overleaf.com/latex/templates/tagged/cv)

## License

This project is licensed under the MIT License - see the `LICENSE` file for details.

## Acknowledgments

- **ModernCV Class**: Thanks to Xavier Danaux for creating the `moderncv` class.
- **Community Support**: Thanks to TeX Stack Exchange and the LaTeX community for invaluable resources and assistance.

---