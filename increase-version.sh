version=$(xmlstarlet select -t -v '/root/@version' -n models/main.xml)
new_version=$((version + 1))

xmlstarlet ed -u '/root/@version' -v ${new_version} models/main.xml > temp.xml
cat temp.xml > models/main.xml
rm temp.xml
echo $new_version