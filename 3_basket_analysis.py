import pandas as pd
from mlxtend.frequent_patterns import apriori, association_rules

print("Step 1: Loading your sales data...")
df = pd.read_excel("./01_Sales Dataset.xlsx")

# Cleaning column names
df.columns = df.columns.str.strip().str.replace('\n', ' ', regex=False)

print("Step 2: Sorting items into 'Shopping Baskets'...")
# Creating the basket
basket = (df.groupby(['Order ID', 'Sub-Category'])['Quantity']
          .sum().unstack().reset_index().fillna(0)
          .set_index('Order ID'))

# --- IMPROVED: Converting to True/False (Booleans) to stop all warnings ---
basket_sets = basket.astype(bool)

print("Step 3: Finding patterns (Searching for even tiny connections)...")
# We lowered 'min_support' to 0.002 to find more patterns
frequent_itemsets = apriori(basket_sets, min_support=0.002, use_colnames=True)

# Generate patterns
rules = association_rules(frequent_itemsets, metric="lift", min_threshold=1)

# Sort by strength
rules = rules.sort_values('lift', ascending=False)

# Make the item names look clean
rules['items_bought'] = rules['antecedents'].apply(lambda x: ', '.join(list(x)))
rules['likely_to_buy_next'] = rules['consequents'].apply(lambda x: ', '.join(list(x)))

print("Step 4: Saving results...")
# We only save the columns that make sense for your report
final_rules = rules[['items_bought', 'likely_to_buy_next', 'support', 'confidence', 'lift']]
final_rules.to_excel("Market_Basket_Rules.xlsx", index=False)

print("\n--- 🎊 ANALYSIS COMPLETE 🎊 ---")
print(f"I found {len(final_rules)} shopping patterns this time!")
print("\nTop 5 Patterns Found:")
print(final_rules[['items_bought', 'likely_to_buy_next']].head())
print("\nLook for 'Market_Basket_Rules.xlsx' in your folder.")

