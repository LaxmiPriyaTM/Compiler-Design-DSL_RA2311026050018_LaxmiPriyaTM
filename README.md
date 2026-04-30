# Token Density Indicator — Compiler Design Project

A lexical-analysis-based system to measure **code complexity** using Token Density.

Built using **Flex (Lex)** for tokenization and **Python (Pandas)** for data analysis.

---

## 👩‍💻 Student Details

| Field        | Details                               |
| ------------ | ------------------------------------- |
| Name         | LaxmiPriya TM                         |
| Register No. | RA2311026050018                       |
| Subject      | Compiler Design                       |
| Institution  | SRM Institute of Science & Technology |

---

## 📁 Project Structure

```
Compiler-Design-DSL_RA2311026050018_LaxmiPriyaTM/
│
├── src/
│   └── lexer.l          # Flex – Lexical Analyzer
│
├── analysis/
│   └── analyzer.py      # Python – Token Density Analysis
│
├── test/
│   └── input.txt        # Sample input code
│
├── output/
│   └── tokens.txt       # Generated token stream
│
├── docs/
│   └── (screenshots / report)
│
├── .gitignore
└── README.md
```

---

## 📌 Project Description

Raw lexical tokens alone do not provide meaningful insights into code complexity.

This project:

* Performs **lexical analysis using Flex**
* Generates a **token stream with line numbers**
* Uses Python to compute:

  * **Token Density (tokens per line)**
  * **Is_Token_Heavy flag**

---

## 🎯 Objective

* Convert raw token streams into meaningful metrics
* Analyze code complexity
* Identify dense (complex) code segments

---

## ⚙️ Tools Used

| Tool       | Purpose               |
| ---------- | --------------------- |
| Flex (Lex) | Token generation      |
| GCC        | Compilation           |
| Python     | Data processing       |
| Pandas     | Data analysis         |
| Ubuntu     | Execution environment |

---

## 🏗️ System Architecture

```
Input Code
    ↓
Lexical Analyzer (Flex)
    ↓
tokens.txt (Token Stream)
    ↓
Python Analyzer (Pandas)
    ↓
Token Density + Flag
```

---

## 🚀 Steps to Run

### 🔹 Step 1: Compile Lexer

```
cd src
flex lexer.l
gcc lex.yy.c -o lexer
```

### 🔹 Step 2: Generate Tokens

```
./lexer < ../test/input.txt > ../output/tokens.txt
```

### 🔹 Step 3: Run Analysis

```
cd ../analysis
python3 analyzer.py
```

---

## 📥 Sample Input

```
x = 5;
y = x + 10;
z = y + x;
```

---

## 📤 Output

```
Total Tokens: 16
Total Lines: 3
Token Density: 5.33
Is Token Heavy: True
```

---

## 📊 Concept

```
Token Density = Total Tokens / Total Lines
```

If:

```
Token Density > 5
```

Then:

```
Is_Token_Heavy = True
```

---

## 📄 Conclusion

This project demonstrates how **lexical analysis can be extended beyond compilation** to perform **code complexity analysis**, improving maintainability and readability.

---

## ❤️ Developed By

**LaxmiPriya TM**
RA2311026050018
