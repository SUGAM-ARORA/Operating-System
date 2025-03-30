
## ✅ Combined `README.md` (Bash + Python)

```markdown
# 🧵 Producer-Consumer Problem – Bash & Python

This project implements the **Producer-Consumer Problem** using two different approaches:

- ⚙️ **Bash Scripting** (Simulated Multithreading using Background Processes)
- 🐍 **Python** (Multithreading with `threading` & `queue` modules)

It demonstrates how two concurrent processes/threads can interact with a shared queue or buffer, showcasing classic synchronization and resource-sharing challenges.

---

## 📌 Problem Statement

### Q1:
Create a queue of user-defined length. Use two threads:
- One generates random numbers and enqueues them.
- Another dequeues and prints them.

### Q2:
Simulate the classic **Producer-Consumer (Bounded Buffer)** problem using:
- A fixed-size shared buffer.
- One thread that **produces** data into it.
- Another thread that **consumes** data from it.

---

## 📁 Files Included

```
├── q1_producer_consumer.sh     # Bash script for Q1
├── q2_buffer_problem.sh        # Bash script for Q2
├── q1_producer_consumer.py     # Python script for Q1
├── q2_buffer_problem.py        # Python script for Q2
└── README.md                   # Project documentation
```

---

## ⚙️ Bash Scripts

### ✅ `q1_producer_consumer.sh`
- Simulates a queue using a text file.
- Producer and consumer run as background processes.
- Colored output using ANSI codes.
- Queue size is input by user.

### ✅ `q2_buffer_problem.sh`
- Uses a Bash array to represent a fixed-size buffer.
- One function adds data, another removes.
- Shows buffer contents after every operation.

### ▶️ How to Run Bash Scripts
```bash
chmod +x q1_producer_consumer.sh q2_buffer_problem.sh

./q1_producer_consumer.sh     # Run Q1 simulation
./q2_buffer_problem.sh        # Run Q2 bounded buffer
```

---

## 🐍 Python Scripts

### ✅ `q1_producer_consumer.py`
- Uses `queue.Queue` for thread-safe operations.
- `threading.Thread` used for concurrent producer and consumer.
- Logs with timestamps and color coding.

### ✅ `q2_buffer_problem.py`
- Uses a Python list as a buffer and `threading.Lock` for synchronization.
- Simulates fixed buffer size.
- Safe access with locking and structured output.

### ▶️ How to Run Python Scripts
```bash
python3 q1_producer_consumer.py     # Run Q1 simulation
python3 q2_buffer_problem.py        # Run Q2 bounded buffer
```

---

## 🖼️ Sample Output

```bash
[14:22:01] Produced: 75
[14:22:03] Consumed: 75
[14:22:04] Produced: 42
[14:22:06] Consumed: 42
```

---

## 💡 Key Concepts Demonstrated

- Threading and concurrency in Python and Bash
- Synchronization using locking and conditions
- Bounded buffer & queue management
- File-based and memory-based interprocess communication
- Use of ANSI color codes for readable logs

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).

---

## 🙌 Acknowledgments

Crafted with ❤️ for academic learning and practical understanding of concurrent systems.

> “Concurrency is not parallelism. It enables it.”

```
