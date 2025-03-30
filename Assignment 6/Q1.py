# ================================
# Q1: Producer-Consumer Queue Simulation
# Author: <Your Name>
# Description: Creates a queue with two threads — one to enqueue, one to dequeue.
# =================================

import threading
import queue
import random
import time
from datetime import datetime

# Colored terminal output
def log(msg, color="default"):
    colors = {
        "green": "\033[92m",
        "red": "\033[91m",
        "blue": "\033[94m",
        "default": "\033[0m"
    }
    print(f"{colors.get(color, colors['default'])}[{datetime.now().strftime('%H:%M:%S')}] {msg}{colors['default']}")

# Input queue size
queue_size = int(input("Enter the maximum queue size: "))
q = queue.Queue(maxsize=queue_size)

# Producer thread function
def producer():
    while True:
        if not q.full():
            item = random.randint(1, 100)
            q.put(item)
            log(f"Produced: {item}", "green")
        time.sleep(1)

# Consumer thread function
def consumer():
    while True:
        if not q.empty():
            item = q.get()
            log(f"Consumed: {item}", "red")
        time.sleep(2)

# Launch threads
producer_thread = threading.Thread(target=producer)
consumer_thread = threading.Thread(target=consumer)

producer_thread.start()
consumer_thread.start()

producer_thread.join()
consumer_thread.join()
