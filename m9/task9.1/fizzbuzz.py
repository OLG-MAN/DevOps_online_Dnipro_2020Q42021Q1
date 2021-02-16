for fb in range(100):

    if fb % 15 == 0:
        print("FizzBuzz")
    elif fb % 3 == 0:
        print("Fizz")
    elif fb % 5 == 0:
        print("Buzz")
    else:
        print(fb)
