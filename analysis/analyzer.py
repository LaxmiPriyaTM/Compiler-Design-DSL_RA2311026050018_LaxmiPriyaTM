import pandas as pd

df = pd.read_csv("../output/tokens.txt", names=["Token", "Value", "Line"])

total_tokens = len(df)
total_lines = df["Line"].max()

token_density = total_tokens / total_lines

threshold = 5
is_token_heavy = token_density > threshold

print("Total Tokens:", total_tokens)
print("Total Lines:", total_lines)
print("Token Density:", round(token_density, 2))
print("Is Token Heavy:", is_token_heavy)
