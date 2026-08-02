def to_binary(num, bits):
    """Convert number to binary (2's complement)."""
    return format(num & ((1 << bits) - 1), f'0{bits}b')


# Input
bits = int(input("Enter number of bits: "))
M = int(input("Enter Multiplicand (M): "))
Q = int(input("Enter Multiplier (Q): "))

A = 0
Q_1 = 0
count = bits

original_M = M
original_Q = Q

print("\nBooth's Multiplication Algorithm")
print("-" * 80)
print(f"{'n':<3}{'Q0':<5}{'Q0Q-1':<8}{'Operation':<18}{'A':<10}{'Q':<10}{'Q-1'}")
print("-" * 80)

while count > 0:

    Q0 = Q & 1

    # Decide operation
    if Q0 == 0 and Q_1 == 1:
        A = A + M
        operation = "A = A + M"
    elif Q0 == 1 and Q_1 == 0:
        A = A - M
        operation = "A = A - M"
    else:
        operation = "No Operation"

    print(f"{count:<3}{Q0:<5}{str(Q0)+str(Q_1):<8}{operation:<18}"
          f"{to_binary(A,bits):<10}{to_binary(Q,bits):<10}{Q_1}")

    # Arithmetic Right Shift
    new_Q1 = Q & 1
    Q = (Q >> 1) | ((A & 1) << (bits - 1))

    if A < 0:
        A = (A >> 1) | (1 << (bits - 1))
    else:
        A = A >> 1

    Q_1 = new_Q1
    count -= 1

    print(f"{'':<16}{'ARS':<18}{to_binary(A,bits):<10}"
          f"{to_binary(Q,bits):<10}{Q_1}")
    print("-" * 80)

# Final Product
product = original_M * original_Q

print("\nFinal Result")
print("A =", to_binary(A, bits))
print("Q =", to_binary(Q, bits))
print("Product (Decimal) =", product)
print("Product (Binary)  =", to_binary(product, bits * 2))