def count_vowels(string_list):
    vowels = 'aoieu'
    count = 0

    for string in string_list:
        for char in string:
            if char.lower() in vowels:
                count += 1
    return count
