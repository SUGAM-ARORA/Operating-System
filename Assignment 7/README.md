## 🚀 **OS Deadlock Management Simulator**

This project simulates **Banker's Algorithm** for deadlock avoidance and a **Deadlock Detection Algorithm**. The system allows you to interactively choose which algorithm to run via a menu-driven shell script.

### 🛠 **Tech Stack**
- **C++**: For implementing the algorithms
- **Bash**: For creating the shell script interface
- **Terminal/Command Line**: For running the scripts and algorithms

---

## 📂 **Project Structure**

```
/OS-Deadlock-Manager
    ├── banker.cpp              # Banker's Algorithm implementation
    ├── deadlock_detection.cpp  # Deadlock Detection Algorithm implementation
    ├── os_deadlock_manager.sh  # Interactive shell script
    └── README.md               # Project instructions and details
```

---

## 📝 **How to Use**

### 1. **Clone or Download the Repository**
You can clone or download the project to your local machine. If you clone it, use the following command:
```bash
git clone <repo-url>
```

### 2. **Compile the C++ Code**
Ensure that you have **g++** installed on your system to compile the C++ files.

To compile the C++ files:
```bash
g++ banker.cpp -o banker
g++ deadlock_detection.cpp -o deadlock
```

Alternatively, you can run the **interactive shell script**, which will handle the compilation and execution automatically.

### 3. **Make the Shell Script Executable**
In your terminal, navigate to the project folder and grant execute permissions to the shell script:
```bash
chmod +x os_deadlock_manager.sh
```

### 4. **Run the Simulator**
Execute the shell script to start the interactive simulator:
```bash
./os_deadlock_manager.sh
```

You will be prompted with a menu to choose from the following options:
1. Run **Banker's Algorithm**.
2. Run **Deadlock Detection Algorithm**.
3. Run **Both** algorithms sequentially.
4. Exit the program.

### 5. **View Output**
The program will display the results of each algorithm and print messages indicating whether the system is in a **safe state** (Banker's Algorithm) or if there are any **deadlocks** detected.

---

## ⚙️ **Algorithms Overview**

### 🔹 **Banker's Algorithm** (Deadlock Avoidance)
This algorithm determines if the system is in a safe state or not by simulating resource allocation and checking if there exists a safe sequence of processes.

### 🔹 **Deadlock Detection Algorithm**
This algorithm checks for processes in a system that are potentially deadlocked. If deadlock is detected, it prints the processes involved.

---

## ❓ **Troubleshooting**

1. **Compilation Error:**
   If you encounter errors during compilation, ensure you have the necessary C++ compiler installed. You can install `g++` using:
   - On Ubuntu:
     ```bash
     sudo apt-get install g++
     ```
   - On macOS (via Homebrew):
     ```bash
     brew install gcc
     ```

2. **Permissions Issue:**
   If you face permission issues with the shell script, ensure it is executable:
   ```bash
   chmod +x os_deadlock_manager.sh
   ```

---

## 📝 **License**
This project is licensed under the **MIT License**.

---

### 🚀 **Enjoy!** 
Feel free to explore and test different input cases for deadlock scenarios. Happy coding!

---
