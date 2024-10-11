grep -rl "sample" | while read file; do
  # Count occurrences of "CSC510"
  count=$(grep -o "CSC510" "$file" | sort | uniq -c | awk '{s+=$1} END {print s}')
  # Get the file size in bytes
  size=$(stat -f%z "$file")
  # Print the count, file size, and file name
  if [ "$count" -ge 3 ]; then
    echo "$count $size $file"
  fi
done | sort -k1,1nr -k2,2nr | while read count size file; do
  # Substitute "file_" with "filtered_" in the file name
  new_file=$(echo "$count $size $file" | sed 's/file_/filtered_/')
  # Output the new file name
  echo "$new_file"
done