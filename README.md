A set of hacks to setup a dbpedia endpoint through neo4j

Installation
============
You will need maven2 (a java package installer) to run dbpedia4neo. So install it using your
favorite package manager : aptitude, brew, or whatever, you can even compile it...
And clone the repo wherever you'd like.
```bash
sudo aptitude install maven2
git clone git@therepo whereveridlike
```

As the project is quite old, it's dependencies has been updated a lot,
and you'll need to refresh it.

```bash
cd therepo
mvn --update-snapshots clean install
```

Usage
=====

To run dbpedia4neo, use the maven command-line util mvn, passing it the dbpedia4neo loader class
and the dbpedia dump triple file(s) you'd like to use. And there you go; if everything goes fine,
you'll have, sooner or later, a `dbpedia4neo` neo4j database directory, fulfilled with a dbpedia dump graph.
```bash
mvn exec:java\
-Dexec.mainClass=org.acaro.dbpedia4neo.inserter.DBpediaLoader\
-Dexec.args="yourfirstntfile yoursecondntfile etc, etc..."
```

####Tips
In order to use a lot of nt files without having to manually list them in -Dexec.args,
you could use your shell backquote feature like this:
```bash
[...]\
-Dexec.args="`ls myfirstfoldercontainingntfiles` `ls mysecondfoldercontainingntfiles` etc, etc..."
```
And Tadaaaa every it will automatically handle the content of the folder you listed as files to process.
Be aware that using this method, dbpedia4neo will try to load every file from these folders,
including those which are not nt files...

Todo
====
 - Ability to pass a directory containing the nt files as argument

Nota
====
I'm not a javaist at all and made this Readme as a memo on how to run dbpedia4neo for everyone that's
not coming from the java ecosystem. I'm widely opened to modifications :-)