# Personal Curriculum Vitae

📄 **[Download Latest CV](https://github.com/nicovsj/cv/releases/latest/download/cv.pdf)**

## Compilation

Compile the CV using:

```bash
pdflatex cv.tex
```

## Pre-commit Hook

This repository uses pre-commit to ensure the CV remains compilable. To set it up:

1. Install pre-commit:
```bash
pip install pre-commit
```

2. Install the git hooks:
```bash
pre-commit install
```

The pre-commit hook will now automatically check if the CV compiles before each commit. 