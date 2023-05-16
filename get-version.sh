
version=$(xmlstarlet select -t -v '/root/@version' -n models/main.xml)
new_version=$((version + 1))
echo "$new_version"
