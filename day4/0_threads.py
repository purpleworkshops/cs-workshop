import threading

def display_words(word_array):
    for n in range(20):
        print(f"{n}: ", end="")
        for word in word_array:
            print(f"{word} ", end="")
        print()  # newline

days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]

# Create threads
t1 = threading.Thread(target=display_words, args=(days,))
t2 = threading.Thread(target=display_words, args=(months,))

# Start and join threads
t1.start()
t2.start()
t1.join()
t2.join()