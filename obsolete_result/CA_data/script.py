import re

group = re.compile('([^<]*)<(.*)>')


with open('./parameters.csv') as f:
    queries = f.readlines()
    for q in queries:
        param = q.split('\t')[1]
        m = re.search(group,param)
        print(m.group(2))

