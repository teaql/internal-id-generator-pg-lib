new_version=$(bash get-version.sh)
xmlstarlet ed -u '/root/@version' -v ${new_version} models/main.xml > temp.xml
cat temp.xml > models/main.xml
rm temp.xml
