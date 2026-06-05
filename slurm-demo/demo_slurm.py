# import time


# print("Going to sleep now!")

# tsec = 60
# # Pause execution for 60 seconds (1 minute)
# time.sleep(tsec)

# print(f"I woke up after {tsec} seconds")

import tensorflow as tf
import time

print("GPUs:", tf.config.list_physical_devices("GPU"))

with tf.device("/GPU:0"):
    a = tf.random.normal([10000, 10000])
    b = tf.random.normal([10000, 10000])

    start = time.time()
    c = tf.matmul(a, b)
    _ = c.numpy()  # force execution
    end = time.time()

print("Result shape:", c.shape)
print("Elapsed:", round(end - start, 2), "seconds")
print("Device:", c.device)