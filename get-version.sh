xml_content=$(cat models/main.xml)
version=$(xmllint  --xpath "string(/root/@version)"  models/main.xml)
new_version=$((version + 1))
echo "$new_version"
