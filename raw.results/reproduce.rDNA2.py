import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd

data_58S_cov=pd.read_csv('58S.WXS.raw.csv.gz',compression='gzip')
metadata=pd.read_csv('../outcomes/PILOT.WXS.clean.metadata.csv')
data_58S_cov=pd.merge(data_58S_cov, metadata, on='ID')
print data_58S_cov.head()
