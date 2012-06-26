# Cleans up malformed .nt dbpedia dump files.
# Ensure that it's executable (chmod +x cleanup.sh),
# and use it like this:
# $> ./cleanup.sh myfirstntfile.nt mysecntfile.nt [...]
# or using a directory content
# $> ./cleanup.sh `ls myfoldercontainingntfiles`
# and there you go :-)
if [ $# -gt 0 ];
then
	for f in $@ ; do
	   grep -Pv "<(?!http(s)?:\/\/).*>" $f > $f.$$.tmp
	   mv $f.$$.tmp $f
	done
fi