# Jupyter Notebook

Usage example

```
docker run -it --rm -p 8888:8888 -v ./work:/home/jovyan/work start-notebook.sh --NotebookApp.token=''
```

Based on [datascience-notebook](https://github.com/jupyter/docker-stacks/tree/master/datascience-notebook)

## BigQuery

You will need service account json key in your work directory

```
from pandas.io import gbq
df = gbq.read_gbq('SELECT * FROM rualogs.data.log LIMIT 100', project_id='rualogs', dialect='standard', private_key='/home/jovyan/work/rualogs-d48bcc1943c4.json')
df.head()
```

[pandas read_gbq](https://pandas.pydata.org/pandas-docs/stable/generated/pandas.read_gbq.html)

## SQL Server

```
import pymssql
conn = pymssql.connect(server='beta.rabota.ua', user='sa', password='rabota', database='RabotaUA2')
cursor = conn.cursor()
cursor.execute('SELECT TOP 10 * FROM VacancyPublished AS VP WITH ( NOLOCK )')
row = cursor.fetchone()
while row:
  print(str(row[0]) + " " + str(row[1]) + " " + str(row[2]))
  row = cursor.fetchone()
```

[pymssql](https://docs.microsoft.com/en-us/sql/connect/python/pymssql/step-3-proof-of-concept-connecting-to-sql-using-pymssql)