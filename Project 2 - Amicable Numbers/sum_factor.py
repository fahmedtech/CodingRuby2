def print_factors(x):
    print("The factors of", x,  "are: ")
    for factors in range(1, x+1):
        if x % factors == 0:
            print(factors)

def sum_factors(x):
    new_sum = 0
    for factors in range(1, x+1):
        if x % factors == 0:
            new_sum += factors
    return new_sum

              
#in idle()
#>> sum_factors(6)

