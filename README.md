# ABAP Daily Practice

Beginner-level practical projects for the ABAP language.

A collection of small, hands-on programs I write while learning ABAP. Each project focuses on one or two core concepts and is kept simple enough to read and run in a single sitting.

## 📂 Projects

| # | Project | Concepts |
|---|---------|----------|
| 1 | [Calculator](./01-calculator) | Classes, methods, IF / CASE |
| 2 | [Month Finder](./02-mont_fider) | Classes, date processing |
| 3 | [Time Finder](./03-time_finder) | Classes, time processing, time zones |

### 1. Calculator

A basic calculator implemented as an ABAP class. It takes two numbers and an operation, then returns the result.

**What it covers**
- Defining a class and its methods
- Branching logic with `IF` / `CASE`
- Basic arithmetic operations

### 2. Month Finder

A class (`z_month_finder`) that processes a date and finds its month.

**What it covers**
- Working with date types in ABAP
- Date processing inside a class method

### 3. Time Finder

A class (`z_time_finder`) that gets the current date and time and converts it to Turkey's time zone.

**What it covers**
- Getting the current timestamp with `utclong_current( )`
- Converting a timestamp to a local date and time with `CONVERT UTCLONG ... TIME ZONE`
- Formatting output with string templates (`DATE = ISO`, `TIME = ISO`)

**Example output**
```
Date: 2026-11-02
Time: 14:30:05
```

## 🚀 How to Run

1. Open an ABAP development environment (ADT in Eclipse or an ABAP trial system)
2. Create a new class with the same name as in the project folder
3. Paste the code from the project folder
4. Activate (`Ctrl + F3`) and run (`F9` for console applications)

## 👤 Author

**Fatmanur Yılmaz**

- GitHub: [@yilmazfatmanur](https://github.com/yilmazfatmanur)✨
