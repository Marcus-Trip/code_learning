msg = "hello world"
print(msg)

sieve = [True] *100
for i in range(2,100):
    if sieve[i]:
        print(i)
        for j in range(i*i, 100, i):
            sieve[j] = False