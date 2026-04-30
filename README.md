# Token Density Indicator — Compiler Design Project

A lexical-analysis-based system to measure **code complexity** using Token Density.

Built using **Flex (Lex)** for tokenization and **Python (Pandas)** for data analysis.

---

## 👩‍💻 Student Details

| Field | Details |
|------|--------|
| Name | LaxmiPriya TM |
| Register No. | RA2311026050018 |
| Subject | Compiler Design |
| Institution | SRM Institute of Science & Technology |

---

## 📁 Project Structure
Compiler-Design-DSL_RA2311026050018_LaxmiPriyaTM/
│
├── src/
│ └── lexer.l # Flex – Lexical Analyzer
│
├── analysis/
│ └── analyzer.py # Python – Token Density Analysis
│
├── test/
│ └── input.txt # Sample input code
│
├── output/
│ └── tokens.txt # Generated token stream
│
├── docs/
│ └── (screenshots / report)
│
├── .gitignore
└── README.md


---

## 📌 Project Description

Raw lexical tokens alone do not provide meaningful insights into code complexity.

This project:
- Performs **lexical analysis** using Flex
- Generates a **token stream with line numbers**
- Uses Python to compute:
  - **Token Density (tokens per line)**
  - **Is_Token_Heavy flag**

---

## 🎯 Objective

- Convert raw token streams into meaningful metrics
- Analyze code complexity
- Identify dense (complex) code segments

---

## ⚙️ Tools Used

| Tool | Purpose |
|------|--------|
| Flex (Lex) | Token generation |
| GCC | Compilation |
| Python | Data processing |
| Pandas | Data analysis |
| Ubuntu | Execution environment |

---

## 🏗️ System Architecture

Input Code
↓
Lexical Analyzer (Flex)
↓
tokens.txt (Token Stream)
↓
Python Analyzer (Pandas)
↓
Token Density + Flag


---

## 🚀 Steps to Run

### 🔹 Step 1: Compile Lexer

```bash
cd src
flex lexer.l
gcc lex.yy.c -o lexer
