# 🧠 Memory Management Simulation using Paging (with FIFO Replacement)

This project is a Python-based simulation of memory management using **paging**, implemented as part of my Operating Systems coursework. It handles multiple processes, allocates pages to available memory frames, and manages page replacement using the **FIFO** strategy when memory is full.

---

## 📌 Features

- Accepts user-defined physical memory size and frame size
- Handles multiple processes with variable memory requirements
- Breaks processes into pages and allocates them to memory frames
- Maintains a page table for each process
- Implements **FIFO** page replacement when memory is exhausted
- Displays final page tables and frame allocation status

---

## 🛠️ How to Run

1. Make sure you have Python 3.x installed.
2. Clone this repository or copy the script.
3. Run the file using:

```bash
python mm-paging.py
