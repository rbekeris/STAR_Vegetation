import pandas as pd

df = pd. read_csv('LAG_kopraza.csv', sep=";",header=1)
df = df.melt(id_vars="Kultūraugi", var_name='year')
print(df)
