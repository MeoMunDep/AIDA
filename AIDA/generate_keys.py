import secrets

def generate_eth_private_keys(count):
    with open("eth_private_keys.txt", "w") as f:
        for _ in range(count):
            private_key = secrets.token_hex(32)
            f.write(f"{private_key}\n")

generate_eth_private_keys(10000)
print("10.000 private key Ethereum telah dibuat dan disimpan di eth_private_keys.txt")

