A set of hacks to setup a dbpedia endpoint through neo4j 

Installation
============

```bash
sudo aptitude install maven2
git clone git@therepo
cd therepo
mvn --update-snapshots clean install
```

Usage
=====
```bash
mvn exec:java\
-Dexec.mainClass=org.acaro.dbpedia4neo.inserter.DBpediaLoader\
-Dexec.args="yourntfile"
```