from sqlalchemy import create_engine
import pandas as pd
from dotenv import load_dotenv
import os
load_dotenv()

connection_string = os.environ['CONNECTION_STRING']
engine = create_engine(connection_string)
df = pd. read_csv('LAG_planted_area.csv', sep=";",header=1)
df = df.melt(id_vars="Kultūraugi", var_name='year')
df.to_sql('total_planted_area', engine, if_exists="replace")

