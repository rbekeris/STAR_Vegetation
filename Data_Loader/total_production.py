from sqlalchemy import create_engine
import pandas as pd
from dotenv import load_dotenv
import os
load_dotenv()

connection_string = os.environ['CONNECTION_STRING_BETWEEN_CONTAINERS']
engine = create_engine(connection_string)
df = pd. read_csv('LAG_kopraza.csv', sep=";",header=1)
df = df.melt(id_vars="Kultūraugi", var_name='year')
df.to_sql('total_production', engine, if_exists="replace")
