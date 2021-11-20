#!/bin/sh -l

result=$(find . -name "*.md" -exec write-good {} \;)

if [ -z "$result" ]; then
    echo "No warnings from write-good"
    exit 0
fi

echo $result

exit 1
