# ================================
# Q2: Bounded Buffer Simulation
# Author: Sugam Arora
# Description: Classic producer-consumer using a fixed-size buffer.
# =================================

import threading
import time
import random
from datetime import datetime

BUFFER_SIZE = 5
buffer = []
lock = threading.Lock()

# Terminal logging with color
def log(msg, color="default"):
    colors = {
        "yellow": "\033[93m",
        "blue": "\033[94m",
        "default": "\033[0m"
    }
    print(f"{colors.get(color, colors['default'])}[{datetime.now().strftime('%H:%M:%S')}] {msg}{colors['default']}")

def producer():
    while True:
        with lock:
            if len(buffer) < BUFFER_SIZE:
                item = random.randint(100, 999)
                buffer.append(item)
                log(f"Producer produced: {item} | Buffer: {buffer}", "yellow")
        time.sleep(1)

def consumer():
    while True:
        with lock:
            if buffer:
                item = buffer.pop(0)
                log(f"Consumer consumed: {item} | Buffer: {buffer}", "blue")
        time.sleep(2)

# Start both threads
threading.Thread(target=producer).start()
threading.Thread(target=consumer).start()
