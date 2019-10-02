# NoSE Index

## installation

```
git clone https://github.com/Y-Wakuta/NoSE_Index.git
cd NoSE_Index/nose-cli-master
bundle install --without=development mysql
```

## Getting started

You can use docker container to try nose_index by using below command.

```
docker run -it --rm yusukew/nose_index /bin/bash

> bundle exec nose search rubis
> bundle exec nose search rubis_secondary
```

'rubis' is the workload that is used [NoSE](https://michael.mior.ca/projects/nose/).
'rubis_secondary' is expanded for secondary index evaluation.

## IO

### Input

* put conceptual data model under [nose-cli-master/nose/models](./nose-cli-master/nose/models)
* put query and frequency under [nose-cli-master/nose/workloads](./nose-cli-master/nose/workloads)

```ruby
  Group 'BrowseCategories', browsing: 4.44,
                            write_heavy: 7.65 do
    Q 'SELECT users.nickname, users.password FROM users WHERE users.id = ? -- 1'
  end
```

You can specify the frequency for each group.
Space constraint can be given as commandline option.

```
  bundle exec nose search rubis_secondary --max_space 119120000
```

### Output

``` ruby
Indexes
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
   i2906147889 [users.id] [] → [users.firstname, users.lastname, users.nickname, users.password, users.email, users.rating, users.balance, users.creation_date] size: $206000 Graph(nodes: users, edges: {})

  Total size: 55888445

Query plans
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
GROUP BrowseCategories
SELECT users.nickname, users.password FROM users WHERE users.id = ? -- 1 users * 4.44 = 0.0409392529394436
  Index lookup    i2906147889 [users.id] [] → [users.firstname, users.lastname, users.nickname, users.password, users.email, users.rating, users.balance, users.creation_date] size: $206000 Graph(nodes: users, edges: {}) * 1.0/1 

  Total cost: 1.0060013622163766
```

'Indexes' section contains column families or secondary indexes. Column family format is below.

```
[partition key][clustering key] -> [value]
```

'Query Plans' section is consist of query plan for each query. Each query plan has several Index lookup steps for query..