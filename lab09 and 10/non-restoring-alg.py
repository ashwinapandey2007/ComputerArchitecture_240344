def binary(num, bits):
    """Return binary representation with fixed width."""
    return format(num & ((1 << bits) - 1), f'0{bits}b')


bits = int(input("Enter number of bits: "))
Q = int(input("Enter Dividend (Q): "))
M = int(input("Enter Divisor (M): "))

if Q >= (1 << bits):
    print(f"\nError: {Q} cannot be represented using {bits} bits.")
    exit()

A = 0

print("\nNon-Restoring Division")
print("-" * 75)
print(f"{'n':<5}{'Operation':<25}{'A':<12}{'Q':<12}")
print("-" * 75)

for i in range(bits):

    # Left shift (A,Q)
    A = (A << 1) | ((Q >> (bits - 1)) & 1)
    Q = (Q << 1) & ((1 << bits) - 1)

    # Add/Subtract
    if A >= 0:
        A = A - M
        op = "A = A - M"
    else:
        A = A + M
        op = "A = A + M"

    # Set Q0
    if A >= 0:
        Q |= 1
    else:
        Q &= ~1

    print(f"{bits-i:<5}{op:<25}{binary(A,bits):<12}{binary(Q,bits):<12}")

# Final restoration
if A < 0:
    A = A + M

print("-" * 75)
print("Quotient           :", Q)
print("Remainder          :", A)
print("Binary Quotient    :", binary(Q, bits))
print("Binary Remainder   :", binary(A, bits))